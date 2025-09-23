#!/bin/bash

#SBATCH --job-name=pi_parallel      #### give the job a name
#SBATCH --account=open              #### specify the account
#SBATCH --partition=open            #### specify the partition
#SBATCH --nodes=3                   #### request 4 nodes
#SBATCH --ntasks-per-node=4         #### request 3 tasks per node
#SBATCH --mem=1G                    #### request the memory required per node
#SBATCH --time=00:30:00             #### set a limit on the total run time
#SBATCH --output=out/%x-%j.out      #### specify the name of job's output file
#SBATCH --error=out/%x-%j.err       #### specify the name of job's error file


module load anaconda/2023
conda activate rc_intro_env

srun python pi_parallel.py > out/${SLURM_JOB_NAME}-${SLURM_JOB_ID}.out
