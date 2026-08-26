@echo off
setlocal
cd /d "%~dp0"
echo ==========================================
echo Drimah OmniVoice - REST local
echo Arquitetura baseada no ai-playground/TTS
echo ==========================================
if not exist ".venv\Scripts\python.exe" (
  echo Criando ambiente Python...
  py -3 -m venv .venv
  if errorlevel 1 (
    echo ERRO: Python 3 nao encontrado.
    pause
    exit /b 1
  )
)
call ".venv\Scripts\activate.bat"
python -m pip install --upgrade pip
python -m pip install -r backend\requirements.txt
echo.
echo Instalacao concluida.
pause
