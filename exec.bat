@echo off
set baseBranch="master"
set commitName="Commit 1"

@REM git config --add --bool push.autoSetupRemote true
git add .
git commit -m %commitName%
git push
gh pr create --base %baseBranch% -t %commitName% -b ""
@REM gh pr merge -m