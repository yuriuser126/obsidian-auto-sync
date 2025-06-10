@echo off
cd /d %~dp0

REM 변경사항 확인
git add .

git diff --cached --quiet
if %errorlevel%==0 (
  echo No changes to commit.
  exit /b 0
)

git commit -m "Auto sync: %date% %time%"

git push origin main
if %errorlevel% neq 0 (
  echo Push failed!
)
