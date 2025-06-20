
library(plumber)

#* @apiTitle Plumber RECUPERACION API

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg=tipo){
  tipo<-as.factor(df$type)
  dummy_cols(tipo, ignore_na = FALSE)
  list(msg = paste0("The message is: API CON DUMMIES", msg, "API RECUPERACION"))
}

stwd()

