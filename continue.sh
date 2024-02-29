#!/bin/bash
#SBATCH --job-name=continue
#SBATCH --output=/ocean/projects/cis230002p/palavall/nanoGPT/xsum_continue.out
#SBATCH --err=/ocean/projects/cis230002p/palavall/nanoGPT/xsum_continue.err
#SBATCH --time=8:00:00
#SBATCH	--mem=16Gb
#SBATCH --gpus=v100-32:1
#SBATCH --partition=GPU-shared

module load anaconda3
conda activate mpalaval-research
cd /ocean/projects/cis230002p/palavall/nanoGPT

python3 data/xsum/prepare.py
python3 train.py config/continued_pretraining_xsum.py
