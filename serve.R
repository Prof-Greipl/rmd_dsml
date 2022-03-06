n = 60
sec = 60
for(i in 1:n){
  rmarkdown::render_site(output_format = 'bookdown::bs4_book', encoding = 'UTF-8')
  print(paste("Build", as.character(i)) )
  Sys.sleep(sec)
}
