#!/bin/bash

set -e

if [ ! -d "myenv" ]; then
    python3 -m venv myenv
fi

source myenv/bin/activate

pip install --no-cache-dir torch torchvision pillow matplotlib numpy jupyter nbconvert

python_path=$(which python)

notebook_path="./src/train.ipynb"

$python_path -m jupyter nbconvert --to notebook --execute "$notebook_path"

echo "Notebook execution and conversion to notebook format completed."

deactivate
