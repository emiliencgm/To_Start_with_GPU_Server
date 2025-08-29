#!/bin/bash
#SBATCH --job-name=example
#SBATCH --partition=gpuq      # where our GPUs are installed.
#SBATCH --nodes=1                   
#SBATCH --ntasks-per-node=1 
#SBATCH --cpus-per-task=1
# /!\ Caution, "multithread" in Slurm vocabulary refers to hyperthreading.
#SBATCH --hint=nomultithread         # hyperthreading is deactivated
#SBATCH --time=00:05:00 
#SBATCH --output=example_%j.out
#SBATCH --error=example_%j.out

# Activate the needed environment, because this will be running on a calculation node which is different from your current login node.
source /home/user_name/anaconda3/etc/profile.d/conda.sh # where your conda.sh is installed
conda activate env_name

# Cleans out the modules loaded in interactive and inherited by default 
module purge

# Loading of modules
# module load ...

# Echo of launched commands
set -x

# Code execution
python -u example.py

