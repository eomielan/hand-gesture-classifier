if (-not (Test-Path "myenv")) {
    python -m venv myenv
}

Activate-Environment -Path .\myenv\Scripts\Activate.ps1

pip install torch torchvision pillow matplotlib numpy jupyter nbconvert

python -m jupyter nbconvert --to notebook --execute .\src\train.ipynb

Deactivate-Environment

Write-Host "Notebook execution and conversion to notebook format completed."
