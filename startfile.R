##
## Ziehung der Lottozahlen 6 aus 49 plus Superzahl
##

## Aufruf:
## ziehung()

## per remote sourcen
## ABER "private" Repositories verwenden einen token.
##       Diesen zuvor in github nachschlagen 
##       (Datei in der Ansicht "raw" anklicken, dann siehe website-adressleiste)
# library(devtools)
# gitHub_code <- "https://raw.githubusercontent.com/anguenth/lotto/master/startfile.R?token=ADC234JIJCKS7CXBALKO4L244PETO"  
# source_url(gitHub_code)


lottoziehung <- function(){
    
    ## 6 aus 49
    hz <- sort(sample(1:49, 6))                ## dflt: replace=FALSE in sample(1:49, 6, replace=FALSE), d.h. ohne Zurücklegen
    ## sort(floor(runif(6, min=1, max=50))) ist immer mit Zurücklegen, daher ungeeignet 
    ## Superzahl
    sz <- sample(0:9, 1)   
    
    result <- paste0("6 aus 49 Tipp: ",Reduce("paste",hz)," SZ ",Reduce("paste",sz)) 
    
    return(result)
}