#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex35
#SBATCH --output=example_35.log
#
rm -rf example_35
rm *.png
time Rscript example_35.R
zip -r pirouette_example_35.zip example_35 example_35.R scripts *.png

