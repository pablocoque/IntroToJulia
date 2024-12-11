#!/bin/bash
#SBATCH --account=project_465001310
#SBATCH --partition=dev-g
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --gpus-per-node=1
#SBATCH --mem-per-cpu=1000
#SBATCH --time="00:15:00"
module use /appl/local/csc/modulefiles
module load julia
julia --project=. -e 'using Pkg; Pkg.instantiate()'
julia --project=. script.jl
