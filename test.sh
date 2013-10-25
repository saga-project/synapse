
  rm -rf /tmp/synapse/

  env SYNAPSE_ID=X..1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=X..2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=X..3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=X..4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=C0.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=0000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C0.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=0000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C0.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=0000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C0.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=0000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  env SYNAPSE_ID=C1.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=1000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C1.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=1000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C1.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=1000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C1.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=1000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  env SYNAPSE_ID=C2.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=2000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C2.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=2000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C2.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=2000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C2.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=2000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  env SYNAPSE_ID=C3.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=3000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C3.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=3000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C3.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=3000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C3.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=3000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  env SYNAPSE_ID=C4.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C4.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C4.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C4.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  env SYNAPSE_ID=C5.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=5000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C5.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=5000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C5.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=5000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C5.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=5000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  env SYNAPSE_ID=C6.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=6000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C6.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=6000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C6.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=6000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C6.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=6000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  env SYNAPSE_ID=C7.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=7000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C7.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=7000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C7.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=7000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C7.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=7000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  env SYNAPSE_ID=C8.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=8000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C8.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=8000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C8.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=8000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=C8.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=8000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  
  

  env SYNAPSE_ID=M0.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=0000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M0.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=0000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M0.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=0000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M0.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=0000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=M1.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=1000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M1.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=1000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M1.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=1000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M1.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=1000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=M2.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=2000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M2.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=2000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M2.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=2000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M2.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=2000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=M3.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=3000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M3.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=3000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M3.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=3000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M3.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=3000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=M4.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M4.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M4.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M4.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=M5.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=5000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M5.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=5000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M5.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=5000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
##env SYNAPSE_ID=M5.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=5000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=M6.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=6000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M6.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=6000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
##env SYNAPSE_ID=M6.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=6000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
##env SYNAPSE_ID=M6.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=6000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=M7.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=7000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M7.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=7000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
##env SYNAPSE_ID=M7.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=7000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
##env SYNAPSE_ID=M7.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=7000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=M8.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=8000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=M8.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=8000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
##env SYNAPSE_ID=M8.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=8000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
##env SYNAPSE_ID=M8.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=8000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py



  env SYNAPSE_ID=S0.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=0000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S0.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=0000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S0.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=0000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S0.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=0000 python $HOME/synapse/test.py

  env SYNAPSE_ID=S1.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S1.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S1.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S1.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=1000 python $HOME/synapse/test.py

  env SYNAPSE_ID=S2.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=2000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S2.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=2000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S2.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=2000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S2.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=2000 python $HOME/synapse/test.py

  env SYNAPSE_ID=S3.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=3000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S3.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=3000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S3.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=3000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S3.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=3000 python $HOME/synapse/test.py

  env SYNAPSE_ID=S4.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=4000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S4.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=4000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S4.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=4000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S4.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=4000 python $HOME/synapse/test.py

  env SYNAPSE_ID=S5.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=5000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S5.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=5000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S5.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=5000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S5.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=5000 python $HOME/synapse/test.py

  env SYNAPSE_ID=S6.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=6000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S6.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=6000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S6.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=6000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S6.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=6000 python $HOME/synapse/test.py

  env SYNAPSE_ID=S7.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=7000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S7.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=7000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S7.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=7000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S7.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=7000 python $HOME/synapse/test.py

  env SYNAPSE_ID=S8.1 SYNAPSE_INSTANCES=1 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=8000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S8.2 SYNAPSE_INSTANCES=2 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=8000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S8.3 SYNAPSE_INSTANCES=3 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=8000 python $HOME/synapse/test.py
  env SYNAPSE_ID=S8.4 SYNAPSE_INSTANCES=4 SYNAPSE_COMPUTE_GFLOPS=4000 SYNAPSE_MEMORY_GBYTES=4000 SYNAPSE_STORAGE_GBYTES=8000 python $HOME/synapse/test.py

