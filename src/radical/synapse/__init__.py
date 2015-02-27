
__author__    = "Radical.Utils Development Team (Andre Merzky, Ole Weidner)"
__copyright__ = "Copyright 2013, RADICAL@Rutgers"
__license__   = "MIT"


import os

import radical.utils.logger as rul



# ------------------------------------------------------------------------------

from synapsify import synapsify
from synapsify import NOTHING
from synapsify import PROFILE
from synapsify import EMULATE

from synapse   import profile_function
from synapse   import profile_command
from synapse   import emulate_command

from synapse   import get_mem_usage, get_io_usage
from synapse   import human_to_number
from synapse   import number_to_human
from synapse   import PREFIX_ISO
from synapse   import PREFIX_BIN


# ------------------------------------------------------------------------------
#

import os

import radical.utils        as ru
import radical.utils.logger as rul


pwd     = os.path.dirname (__file__)
root    = "%s/.." % pwd
version, version_detail, version_branch, sdist_name, sdist_path = ru.get_version ([root, pwd])

_logger = rul.logger.getLogger  ('radical.synapse')
_logger.info ('radical.synapse      version: %s' % version_detail)


# ------------------------------------------------------------------------------

