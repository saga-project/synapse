

import os
import time
import signal
import pprint
import pymongo
import radical.utils        as ru
import radical.utils.logger as rul

# import pudb 
# pudb.set_interrupt_handler ()


LOAD        = int (os.environ.get ('RADICAL_SYNAPSE_LOAD', '0'))
LOAD_CMD    = "top -b -n1 | head -1  |       cut -f 4 -d :         | cut -f 1 -d ,"
LOAD_CMD    = "top -b -n1 | head -n1 | rev | cut -f 3 -d \  | rev  | sed -e 's/,//'"


# ------------------------------------------------------------------------------
#
logger = rul.getLogger  ('radical.synapse')


# ------------------------------------------------------------------------------
#
_stamp_zero = None
def timestamp():
    global _stamp_zero
    if not _stamp_zero :
        _stamp_zero = time.time()
        return 0.0
    return time.time() - _stamp_zero

def time_zero():
    return _stamp_zero


# ------------------------------------------------------------------------------
#
#
PREFIX_BIN = { 'K' : 1024,
               'M' : 1024 * 1024,
               'G' : 1024 * 1024 * 1024,
               'T' : 1024 * 1024 * 1024 * 1024,
               'P' : 1024 * 1024 * 1024 * 1024 * 1024,
               'E' : 1024 * 1024 * 1024 * 1024 * 1024 * 1024,
               'Z' : 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024,
               'Y' : 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024
             }

PREFIX_ISO = { 'K' : 1000,
               'M' : 1000 * 1000,
               'G' : 1000 * 1000 * 1000,
               'T' : 1000 * 1000 * 1000 * 1000,
               'P' : 1000 * 1000 * 1000 * 1000 * 1000,
               'E' : 1000 * 1000 * 1000 * 1000 * 1000 * 1000,
               'Z' : 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000,
               'Y' : 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000
             }


# ------------------------------------------------------------------------------
#
def human_to_number (h, prefix=PREFIX_BIN) :

    rs = ru.ReString (h)

    with rs // '^\s*([\d\.]+)\s*(\D+)\s*$' as match : 
        if  not match :
          # print 'incorrect format: %s' % h
            return float(h)

        p = match[1].upper()[0]

        if  not p in prefix :
          # print 'unknown prefix: %s' % h
            return float(h)

        return float(match[0]) * prefix[p]


# ------------------------------------------------------------------------------
#
def number_to_human (n, prefix=PREFIX_BIN, unit='', template="%(val)f %(unit)s") :

    for key in prefix.keys () :

        hn = n / float(prefix[key])
        if  hn > 1 and hn < 1000 :
            return template % {'val' : hn, 'unit' : "%s%s" % (key, unit)}

    return template % {'val' : n, 'unit' : unit}


# ------------------------------------------------------------------------------
#
def time_to_seconds (t) :

    rs = ru.ReString (t)

    with rs // '^(?:\s*(\d+)\s*[:])+\s*([\d\.]+)\s*$' as match :

        if  not match :
            return t

        seconds = 0
        if  len(match) ==  1 : seconds = float(match[0])
        if  len(match) ==  2 : seconds = float(match[0]) * 60      + float(match[1])
        if  len(match) ==  3 : seconds = float(match[0]) * 60 * 60 + float(match[1]) * 60 + float(match[2])

        return seconds


# ------------------------------------------------------------------------------
def store_profile (profile, tags=None, dburl=None, emulated=False) :

    if not dburl:
        dburl = os.environ.get ('RADICAL_SYNAPSE_DBURL')

    if not dburl:
        raise ValueError ("need dburl for storing profiles")

    if not tags:
        tags = dict()
        if 'RADICAL_SYNAPSE_TAGS' in os.environ:
            for elem in os.environ['RADICAL_SYNAPSE_TAGS'].split(','):
                key, val  = elem.split(':', 1)
                tags[key] = val

    command_idx = index_command (profile['cmd'], tags)

    print 'store profile at %s' % dburl

    [host, port, dbname, _, _, _, _] = ru.split_dburl (dburl)

    db_client  = pymongo.MongoClient (host=host, port=port)
    database   = db_client[dbname]
    collection = database['profiles']

    # create new profile
    doc = {'type'        : 'synapse_profile', 
           'emulated'    : emulated,
           'command_idx' : command_idx, 
           'command'     : profile['cmd'], 
           'tags'        : tags, 
           'profile'     : profile}

    collection.insert (doc)


# ------------------------------------------------------------------------------
def get_profiles (command, tags=None, dburl=None, emulated=False) :

    if not dburl:
        dburl = os.environ.get ('RADICAL_SYNAPSE_DBURL')

    if not dburl:
        raise ValueError ("need dburl for storing profiles")

    command_idx = index_command (command, tags)

    [host, port, dbname, _, _, _, _] = ru.split_dburl (dburl)

    db_client  = pymongo.MongoClient (host=host, port=port)
    database   = db_client[dbname]
    collection = database['profiles']

    # FIXME: eval tags

    results = collection.find ({'type'        : 'synapse_profile', 
                                'emulated'    : emulated,
                                'command_idx' : command_idx})

    if  not results.count() :
        raise RuntimeError ("Could not get profile for %s at %s/profiles" % (command, dburl))

    ret = list(results)

    print 'retrieved %d profiles from %s' % (len(ret), dburl)
  # pprint.pprint (ret)

    return ret


# ------------------------------------------------------------------------------
#
def index_command (command, tags=None) :

    return str(command)


# ------------------------------------------------------------------------------

