#!/bin/bash

pip install nbconvert

notebook="./src/train.ipynb"

jupyter nbconvert --execute --to html "$notebook"

echo "Notebook execution and conversion to HTML completed."
