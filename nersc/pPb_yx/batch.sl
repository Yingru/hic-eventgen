#!/bin/sh
#SBATCH -N 2 -c 64
#SBATCH -p debug
#SBATCH -t 00:30:00
#SBATCH -C haswell

cd $CSCRATCH/pPb4

export CONDA_PREFIX=/global/common/software/m2730/hic_yx
export PATH=$CONDA_PREFIX/bin:/usr/common/tig/taskfarmer/1.5/bin:$(pwd):$PATH
export XDG_DATA_HOME=$CONDA_PREFIX/share
export THREADS=32

echo $(pwd)
echo $PATH
ls -lh

runcommands.sh tasks
