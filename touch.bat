@echo off
if "%~1"=="" (
    echo No folder name specified.
    pause
    exit /b
)

set "filename=%~1"
set "foldername=%~dp1"

echo Creating file: %filename%
echo Creating folder: %foldername%

mkdir "%foldername%" 2>nul

type nul >"%filename%"

echo File and folder created successfully.