#!/bin/bash

set -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 <image_path>"
    exit 1
fi

if [ ! -d "myenv" ]; then
    python3 -m venv myenv
fi

source myenv/bin/activate

pip install --no-cache-dir torch torchvision pillow

python_path=$(which python)

main_py_path="./src/main.py"

image_path="$1"

$python_path "$main_py_path" "$image_path"

deactivate
