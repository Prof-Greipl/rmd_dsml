@echo off
xcopy ..\_book ..\docs /s /e /y

cd ..
git add -A && git commit -m "from deploy.bat"
git push
