#!/bin/sh
#SBATCH --nodes=2
#SBATCH --cpus-per-task=64
#SBATCH --qos regular
#SBATCH --time 02:00:00
#SBATCH --constraint haswell
#SBATCH --mail-type ALL
#SBATCH --mail-user yx59@duke.edu

cd $CSCRATCH/pPb_20180815

export CONDA_PREFIX=/global/common/software/m2730/hic_yx
export PATH=$CONDA_PREFIX/bin:/usr/common/tig/taskfarmer/1.5/bin:$(pwd):$PATH
export XDG_DATA_HOME=$CONDA_PREFIX/share
export THREADS=32

echo $(pwd)
echo $PATH
ls -lh

runcommands.sh tasks
