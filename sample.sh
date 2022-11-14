#!/bin/bash
#SBATCH --job-name=ppm
#SBATCH --qos=debug
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --constraint=haswell
#SBATCH -o ppm-%J.out
#SBATCH -e ppm-%J.err
#SBATCH --reservation=marathon

/usr/bin/time --format='%e' timeout 5m ./A < input.txt > output.out
