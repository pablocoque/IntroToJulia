#!/bin/bash
#SBATCH --account=project_465001310
#SBATCH --partition=debug
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1000
#SBATCH --time="00:05:00"
module use /appl/local/csc/modulefiles
module load julia
julia --project=. script.jl
