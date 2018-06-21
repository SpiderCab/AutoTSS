@ECHO OFF
TITLE "AutoTSS - https://github.com/SpiderCab/AutoTSS"
SET mypath=%cd%

:MENU
CLS

ECHO ============= AutoTSS =============
ECHO -------------------------------------
ECHO 1.  Install
ECHO 2.  Auto Mode
ECHO 3.  Manual Mode
ECHO 4.  Edit Devices List
ECHO 5.  Check For Updates
ECHO 6.  Exit
ECHO.

SET INPUT=
SET /P INPUT=Please select an option:

IF /I '%INPUT%'=='1' GOTO Install
IF /I '%INPUT%'=='2' GOTO AutoPrompt
IF /I '%INPUT%'=='3' GOTO ManualPrompt
IF /I '%INPUT%'=='4' GOTO DeviceEdit
IF /I '%INPUT%'=='5' GOTO Updates
IF /I '%INPUT%'=='6' GOTO Exit

GOTO MENU

:Install
CLS
ECHO "Upgrading Pip..."
python -m pip install --upgrade pip
ECHO "Installing Requests module..."
pip3 install requests
ECHO "Installing Dataset module..."
pip3 install dataset
ECHO "Requirements installed!"
GOTO Menu

:AutoPrompt
CLS
ECHO "AutoTSS will check for new blobs to save every 30 seconds..."
:AutoRun
python "%mypath%\autotss.py"
timeout /t 30
GOTO AutoRun

:ManualPrompt
CLS
ECHO "AutoTSS will check for new blobs to save..."
:ManualRun
python "%mypath%\autotss.py"
ECHO "Completed!"
timeout /t 5
GOTO MENU

:DeviceEdit
CLS
notepad devices.ini
GOTO Menu


:Updates
CLS
ECHO "You are running AutoTSS 1.2"
start "" https://github.com/SpiderCab/AutoTSS/releases
GOTO MENU

:Exit
CLS
EXIT
