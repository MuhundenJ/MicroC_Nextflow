#!/bin/bash
conda activate eugene
unset XDG_RUNTIME_DIR
echo "done."
echo "*** Setting Jupyter interrupt character to Ctrl-T instead of Ctrl-C"
echo "*** to avoid conflicts with Slurm."
stty intr ^T
echo ""
echo "*** Starting Jupyter on: " $(hostname)
jupyter notebook --no-browser --ip='0.0.0.0' # earlier versions of Jupyter 	allowed '*' instead of '0.0.0.0'
