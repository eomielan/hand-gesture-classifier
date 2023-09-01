param (
    [string]$image_path
)

$ErrorActionPreference = "Stop"

if ($image_path -eq $null) {
    Write-Host "Usage: .\script.ps1 -image_path <image_path>"
    exit 1
}

if (-not (Test-Path "myenv")) {
    python -m venv myenv
}

Activate-Environment myenv\Scripts\Activate

pip install torch torchvision pillow

$python_path = Get-Command python | Select-Object -ExpandProperty Source

$main_py_path = ".\src\main.py"

& $python_path $main_py_path $image_path

Deactivate-Environment
