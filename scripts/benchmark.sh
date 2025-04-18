#!/bin/bash

MINSIZE=500;
STEPSIZE=500;
NPTS=16;
WNITER=20;
NITER_START=1000;
NITER_END=4;
SAVEDIR="benchmark_data"

rm -r $PWD/build
cmake -B $PWD/build -S $PWD -DNTHREADS=${1} -DINTEL_PROC=${2}
cmake --build $PWD/build -t benchmark
$PWD/build/benchmark ${MINSIZE} ${STEPSIZE} ${NPTS} ${WNITER} ${NITER_START} ${NITER_END} ${SAVEDIR}