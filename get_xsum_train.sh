#!/bin/bash
#SBATCH --job-name=data
#SBATCH --output=/ocean/projects/cis230007p/palavall/DataContaminationResearch/get_xsum_train.out
#SBATCH --err=/ocean/projects/cis230007p/palavall/DataContaminationResearch/get_xsum_train.err 
#SBATCH --time=8:00:00
#SBATCH	--mem=16Gb
#SBATCH --gpus=v100-16:1
#SBATCH --partition=GPU-shared

module load anaconda3
conda activate mpalaval-research
cd /ocean/projects/cis230007p/palavall/DataContaminationResearch

python3 get_xsum_train.py
