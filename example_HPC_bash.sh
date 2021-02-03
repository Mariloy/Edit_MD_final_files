#!/bin/bash

####################################
#     ARIS slurm script template   #
#                                  #
# Submit script: sbatch filename   #
#                                  #
####################################

#SBATCH --job-name=apoe1_1  # Job name
#SBATCH --ntasks=160     # Number of processor cores (i.e. tasks)
#SBATCH --nodes=8     # Number of nodes requested
#SBATCH --ntasks-per-node=20     # Tasks per node
#SBATCH --cpus-per-task=1     # Threads per task
#SBATCH --time=48:00:00   # walltime
#SBATCH --partition=compute     # Partition(s)
#SBATCH --mem-per-cpu=1024M   # memory per CPU core
#SBATCH --account=pr007003_thin    # Accounting project

export I_MPI_FABRICS=shm:dapl

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# LOAD MODULES
    module load gnu
    module load intel
    module load intelmpi
    module load  gromacs/2018.1


srun gmx_mpi mdrun -v -ntomp 1 -deffnm md_250ns_1
