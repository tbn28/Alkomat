@echo off

if not exist %~1\python.exe (
    echo Path to python.exe is wrong!
	goto endOfScript
)

:beginOfScript

set PATH=%~1\Scripts;%~1;%PATH%

for /f "tokens=*" %%i in ('python -c "import sys; print(\"Python \" + sys.version);"') do set PYTHONVERSION=%%i

title %PYTHONVERSION%

echo %PYTHONVERSION%
echo.

:endOfScript

cmd /k

H:\WinPython-32bit-3.5.2.3Zero\python-3.5.2
python -m pip install django

MakePythonShell "G:\WinPython-32bit-3.5.2.3Zero\python-3.5.2"

python manage.py runserver