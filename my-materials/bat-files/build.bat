@echo off
cd ..
"C:\Program Files\R\R-4.1.2\bin\R.exe" -e "rmarkdown::render_site(output_format = 'bookdown::bs4_book', encoding = 'UTF-8')"
PING -n 50 127.0.0.1>nul
cd bat-files
echo "Finished..."