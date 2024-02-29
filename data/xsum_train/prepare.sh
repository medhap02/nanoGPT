#!/bin/bash
#SBATCH --job-name=prepare
#SBATCH --output=/ocean/projects/cis230007p/palavall/nanoGPT/data/xsum_train/prepare.out
#SBATCH --err=/ocean/projects/cis230007p/palavall/nanoGPT/data/xsum_train/prepare.err
#SBATCH --time=8:00:00
#SBATCH	--mem=16Gb
#SBATCH --gpus=v100-16:1
#SBATCH --partition=GPU-shared

module load anaconda3
conda activate mpalaval-research
cd /ocean/projects/cis230007p/palavall/nanoGPT/data/xsum_train

python3 prepare.py
