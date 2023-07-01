#!/bin/bash
#SBATCH --job 1_create_trajectories
#SBATCH --cluster=srf_gpu_01
#SBATCH --mem 4G
#SBATCH --gres=gpu:1
#SBATCH --mail-user=linas.nasvytis@stx.ox.ac.uk

echo “running python3 autoregressive_control.py --test_policy --env_name CartPole-v1 --num_iterations 1000”

python3 autoregressive_control.py --test_policy --env_name CartPole-v1 --num_iterations 1000

echo “DONE”
