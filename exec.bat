@echo off

set "updateComponents=true"
set "updateCalendar=true"
set baseBranch="staging"

echo "narek"

@REM if "%updateComponents%" == "true" if "%updateCalendar%" == "true" (
@REM     call npm update boom-components boom-calendar
@REM     set commitName=":arrow_up: Update boom-calendar and boom-components"
@REM )

@REM if "%updateComponents%" == "true" if "%updateCalendar%" == "false" (
@REM     call npm update boom-components
@REM     set commitName=":arrow_up: Update boom-components"
@REM )

@REM if "%updateComponents%" == "false" if "%updateCalendar%" == "true" (
@REM     call npm update boom-calendar
@REM     set commitName=":arrow_up: Update boom-calendar"
@REM )

@REM if "%updateComponents%" == "false" if "%updateCalendar%" == "false" (
@REM     echo "Exit"
@REM     exit
@REM )

@REM git config --add --bool push.autoSetupRemote true
@REM git add .
@REM git commit -m %commitName%
@REM git push
@REM gh pr create --base %baseBranch% -t %commitName% -b ""
@REM gh pr merge -m