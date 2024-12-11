#!/bin/bash
#SBATCH --account=project_465001310
#SBATCH --partition=debug
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1000
#SBATCH --time="00:15:00"
module use /appl/local/csc/modulefiles
module load julia
julia --project=. -e 'using Pkg; Pkg.instantiate()'
srun julia --project=. script.jl
