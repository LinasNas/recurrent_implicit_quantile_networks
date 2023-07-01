#!/bin/bash
#SBATCH --cluster=srf_gpu_01
#SBATCH --gres=gpu:1
echo “Here are all the GPUs I can see on HPC server ${HOSTNAME}:”
nvidia-smi -L

python autoregressive_control.py --test_policy --env_name CartPole-v1 --num_iterations 10000