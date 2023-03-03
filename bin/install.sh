#!/bin/bash

# Installation script for Repast4Py on CentOS7

# MPI dependency
sudo yum install -y openmpi-devel
source ~/.bashrc
module load mpi

# Require Python 3.7+. Use 3.9
if command -v python3.9 &> /dev/null
then
	echo "Python 3.9 is installed!"
else
	echo "Python 3.9 is not installed!"
	exit
fi

# Require python3.9 to have already installed
env CC=mpicxx pip3.9 install repast4py
