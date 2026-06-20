@echo off
set GIT_PATH="C:\Users\Halith\AppData\Local\Microsoft\WinGet\Packages\Git.MinGit_Microsoft.Winget.Source_8wekyb3d8bbwe\cmd\git.exe"

echo Pushing code to GitHub (Overwriting remote repository with your local code)...
echo A browser login window may open to authenticate with GitHub.
%GIT_PATH% push -u origin main --force

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo =======================================================
    echo ERROR: Git push failed!
    echo Please read the error message above.
    echo Common reasons:
    echo 1. You canceled the login prompt.
    echo 2. You do not have permission to push to this repository.
    echo =======================================================
) else (
    echo.
    echo =======================================================
    echo SUCCESS: Code successfully pushed to GitHub!
    echo =======================================================
)

echo.
echo Done.
pause