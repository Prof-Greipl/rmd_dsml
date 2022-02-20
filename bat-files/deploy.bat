@echo off
REM rende the book
cd ..
"C:\Program Files\R\R-4.1.2\bin\R.exe" -e "rmarkdown::render_site(output_format = 'bookdown::bs4_book', encoding = 'UTF-8')"

xcopy _book docs\ /s /e /y

REM Delete all unused files
cd docs
del *.pdf
del *.md
del *.tex
cd ..

git add -A && git commit -m "from deploy.bat"
git push

set /p id="Process finished. Enter to close..."
exit /B
