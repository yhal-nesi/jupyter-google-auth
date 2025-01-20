#!/bin/bash

. /jupyter/bin/activate
cd /notebooks
jupyter-notebook --ip 0.0.0.0 --allow-root
