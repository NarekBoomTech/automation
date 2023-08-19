@echo off
set baseBranch="staging"
set commitName="Commit 1"

git config --add --bool push.autoSetupRemote true
git add .
git commit -m %commitName%
git push
gh pr create --base %baseBranch% -t %commitName% -b ""
@REM gh pr merge -m