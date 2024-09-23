#!/bin/bash
#SBATCH -A kcis
#SBATCH -n 40
#SBATCH --gres=gpu:3
#SBATCH --qos=kl4
#SBATCH --mem-per-cpu=4000M
#SBATCH --time=4-00:00:00
#SBATCH --job-name=sft_single_adapter_continued
#SBATCH --output=/home2/tathagato/summarization/MACSUM/naacl/logs/sbatch_output.out
#SBATCH --partition=lovelace
#SBATCH --mail-user=tathagato.roy@research.iiit.ac.in
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=REQUEUE
#SBATCH --mail-type=ALL
#SBATCH -w gnode121
export NCCL_P2P_DISABLE=1

python run_all_sft_multi_attribute_single_adapter_continued.py

echo "Completed"




