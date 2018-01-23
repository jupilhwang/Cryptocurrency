export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
./ethdcrminer64 -epool asia.ethash-hub.miningpoolhub.com:20535 -ewal dexkoinfo.kdex1 -eworker dexkoinfo.kdex1 -esm 2 -epsw x -dpool stratum+tcp://hub.miningpoolhub.com:20550 -dwal dexkoinfo.kdex1 -dpsw x -dcoin sc
