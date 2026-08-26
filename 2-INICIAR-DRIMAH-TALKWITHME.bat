@echo off
setlocal
cd /d "%~dp0"
call ".venv\Scripts\activate.bat"
echo ==========================================
echo Drimah OmniVoice REST local
echo http://127.0.0.1:8181/ui
echo Mantenha esta janela aberta.
echo ==========================================
python backend\server.py
pause
