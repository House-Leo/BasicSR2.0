#!/usr/bin/env bash
export NCCL_P2P_DISABLE=1
GPUS=$1
CONFIG=$2
# PORT=${PORT:-4321}

torchrun --nproc_per_node=$GPUS --master_port=4321 basicsr/train.py -opt $CONFIG --launcher pytorch --auto_resume