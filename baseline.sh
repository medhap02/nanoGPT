#!/bin/bash
#SBATCH --job-name=baseline
#SBATCH --output=/ocean/projects/cis230002p/palavall/nanoGPT/baseline.out
#SBATCH --err=/ocean/projects/cis230002p/palavall/nanoGPT/baseline.err
#SBATCH --time=8:00:00
#SBATCH	--mem=16Gb
#SBATCH --gpus=v100-32:1
#SBATCH --partition=GPU-shared

module load anaconda3
conda activate mpalaval-research
cd /ocean/projects/cis230002p/palavall/nanoGPT

python3 data/xsum_train/prepare.py
python3 train.py config/baseline_xsum.py
