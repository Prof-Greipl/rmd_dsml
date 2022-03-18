n = 50
sec = 5
for(i in 1:n){
  rmarkdown::render_site(output_format = 'bookdown::bs4_book', encoding = 'UTF-8')
  print(paste("Build", as.character(i)) )
  Sys.sleep(sec)
}


