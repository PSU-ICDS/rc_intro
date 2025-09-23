#!/bin/bash

#SBATCH --job-name=pi_parallel
#SBATCH --account=open
#SBATCH --partition=open
#SBATCH --nodes=3
#SBATCH --ntasks-per-node=4
#SBATCH --mem=1G
#SBATCH --time=00:30:00
#SBATCH --output=out/%x-%j.out
#SBATCH --error=out/%x-%j.err

module load anaconda/2023
conda activate rc_intro_env

srun python pi_parallel.py > out/${SLURM_JOB_NAME}-${SLURM_JOB_ID}.out
