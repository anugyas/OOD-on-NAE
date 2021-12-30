#!/bin/bash
#SBATCH --job-name=CV-Final-EnergyOOD
#SBATCH --nodes=1 
#SBATCH --cpus-per-task=4
#SBATCH --output=%x.out
#SBATCH --error=%x.err
#SBATCH --mem=64GB 
#SBATCH --time=3:00:00 
#SBATCH --gres=gpu:1

module purge
module load anaconda3/2020.07
eval "$(conda shell.bash hook)"
conda activate hw2_dqn
cd /scratch/as14770/CV-FinalProject/energy_ood/CIFAR

python train.py
