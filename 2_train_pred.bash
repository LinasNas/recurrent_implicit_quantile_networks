#!/bin/bash
#SBATCH --job 2_train_pred
#SBATCH --cluster=srf_gpu_01
#SBATCH --mem 4G
#SBATCH --gres=gpu:1
#SBATCH --mail-user=linas.nasvytis@stx.ox.ac.uk

echo “running python3 autoregressive_control.py --test_policy --env_name CartPole-v1 --num_iterations 1000”

python3 autoregressive_control.py --predictive_model_training --env_name CartPole-v1 --is_recurrent_v2 --predictive_model_paths "/vols/teaching/msc-projects/2022-2023/linasvytis/msc/recurrent_implicit_quantile_networks/models/CartPole-v1/replicated_pred_model_1000.pt"

echo “DONE”