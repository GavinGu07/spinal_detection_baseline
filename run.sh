

KMP_BLOCKTIME=1 KMP_HW_SUBSET=1t KMP_AFFINITY=granularity=fine,compact,1,0 OMP_NUM_THREADS=24 numactl -C0-23 -m0 python -u -m spine_code.main -j 24 --world-size=4 --rank=0 >> 1.log & KMP_BLOCKTIME=1 KMP_HW_SUBSET=1t KMP_AFFINITY=granularity=fine,compact,1,0 OMP_NUM_THREADS=24 numactl -C24-47 -m1 python -u -m spine_code.main -j 24 --world-size=4 --rank=1 >> 2.log & KMP_BLOCKTIME=1 KMP_HW_SUBSET=1t KMP_AFFINITY=granularity=fine,compact,1,0 OMP_NUM_THREADS=24 numactl -C48-71 -m2 python -u -m spine_code.main -j 24 --world-size=4 --rank=2 >> 3.log & KMP_BLOCKTIME=1 KMP_HW_SUBSET=1t KMP_AFFINITY=granularity=fine,compact,1,0 OMP_NUM_THREADS=24 numactl -C72-95 -m3 python -u -m spine_code.main -j 24 --world-size=4 --rank=3 >> 4.log &
