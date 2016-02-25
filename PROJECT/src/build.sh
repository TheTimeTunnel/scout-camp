#!/bin/bash
path_src='PROJECT/src'
echo "pip install -r '$path_src/requirements.txt'"
pip install -r "$path_src/requirements.txt"
echo 'ScoutCamp Linux Build (w/ render)'
echo '$ scout --version'
python "$path_src/scout.py" --version
echo "$ scout --create base_project"
python "$path_src/scout.py" --create "base_project"
echo '$ scout --path base_project --render'
python "$path_src/scout.py" --path "base_project" --render
