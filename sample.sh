#!/bin/bash
#SBATCH --job-name=sample
#SBATCH --output=/ocean/projects/cis230002p/palavall/nanoGPT/sample.out
#SBATCH --err=/ocean/projects/cis230002p/palavall/nanoGPT/sample.err
#SBATCH --time=8:00:00
#SBATCH	--mem=16Gb
#SBATCH --gpus=v100-32:1
#SBATCH --partition=GPU-shared

module load anaconda3
conda activate mpalaval-research
cd /ocean/projects/cis230002p/palavall/nanoGPT

python sample.py --out_dir=out-xsum-2
