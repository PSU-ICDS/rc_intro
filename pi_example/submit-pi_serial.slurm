#!/bin/bash

#SBATCH --job-name=pi_serial        #### give the job a name
#SBATCH --account=open              #### specify the account
#SBATCH --partition=open            #### specify the partition
#SBATCH --nodes=1                   #### request a node
#SBATCH --ntasks=1                  #### request a task / cpu
#SBATCH --mem=1G                    #### request the memory required per node
#SBATCH --time=00:30:00             #### set a limit on the total run time
#SBATCH --output=out/%x-%j.out      #### specify the name of job's output file
#SBATCH --error=out/%x-%j.err       #### specify the name of job's error file

module load anaconda/2023
conda activate rc_intro_env

python pi_serial.py > out/${SLURM_JOB_NAME}-${SLURM_JOB_ID}.pyout
