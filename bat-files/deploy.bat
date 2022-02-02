@echo off
xcopy ..\_book ..\docs /s /e /y
cd ..\docs

REM Delete all unused files
del *.pdf
del *.md
del *.tex

cd ..
git add -A && git commit -m "from deploy.bat"
git push
