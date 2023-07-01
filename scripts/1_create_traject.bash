#!/bin/bash
#SBATCH --job 1_create_trajectories
#SBATCH --cluster=srf_gpu_01
#SBATCH --mem 8G
#SBATCH --gres=gpu:1
#SBATCH --mail-user=linas.nasvytis@stx.ox.ac.uk

python autoregressive_control.py --test_policy --env_name CartPole-v1 --num_iterations 10000

