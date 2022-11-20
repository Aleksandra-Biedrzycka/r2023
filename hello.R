print("hello !")
print("hello2 !")
print("hello3 !")
 
install.packages("httr")
install.packages("jsonlite")


library(httr)
library(jsonlite)

endpoint<- "https://api.openweathermap.org/data/2.5/weather?q=Warszawa&appid=apikey&units=metric"
class(endpoint)

gotWeather<- GET(endpoint)
gotWeather

weatherText<- content(gotWeather,"text")
weatherText
print(weatherText)

dataFromJSON <- fromJSON(weatherText)
dfFromJSON<-as.data.frame(dataFromJSON)

dataFromJSON2 <- fromJSON(endpoint)
dfFromJSON2<-as.data.frame(dataFromJSON2)
View(dfFromJSON2)

 
x <- 100
class(x)

is.numeric(x)
is.vector(x)


x[1]

?seq

1:10
11:20

x2<-seq(1, 10, by = 1)
x3<-seq(11,20, by = 1)


vm<-c(2,4,3)
vm<-c(vm,vm)


20:10
seq(20,10,by=-1)
 
?seq
#  *+-/
x2*x3
x2*vm

# pomoc dla vector

?vector
#The atomic modes are "logical", "integer", "numeric" (synonym "double"), "complex", "character" and "raw".

class(vm)
vm<-c(2,4,3,0,-1)
logiczny<- as.logical(vm)
as.integer(logiczny)
znakowy<-c("1","2","3")

c(znakowy,vm)

# liczbowa i logiczna ?

 class (c(logiczny,vm) )

  vm[2:3]
 
  
 lista<- list(c("1","2","3"),c(1,2,3),c(TRUE,FALSE))
  wektorZlisty<- lista[[2]] 
  wektorZlisty[1:2]
  
    wektorFlaga<- vm>0
    vm[wektorFlaga]
    vm[vm>0]
     A<-lista
    # wektor liczbowy z listy - index2.
    A[[2]][A[[2]]!=2]
    
    M<- matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
           dimnames = NULL)
    M<-matrix()
    
    wektor<- 1:10
    M<-as.matrix(wektor)
    
    matrix(1:10, ncol=5)
    
    wektor2<-11:20
    
    ?rbind
    ?cbind
    
    rbind(wektor,wektor2)
    cbind(wektor,wektor2)
    
    ?t
    m2 <- matrix (c(1,2,3,4),ncol=2)
    t(m)
    
    m <- matrix (c(1,2,3,4,5,6),ncol=2)
    m<-t(m)
    
    ?matrix
    
    ?'%*%'
    m2 %*% m
    
    x<-10
    y<-2
      x/y
      x%%y
      x%/%y
      
   plec<- c("m","k","m","k","m")    
   plecFactor<-   as.factor(plec)
   as.numeric(plecFactor)
   unclass(plecFactor)
   plecFactor<-   as.factor(plec)
   
   plecFactor2<- factor(plec, levels = c("m","k"))
   unclass(plecFactor2)
   
   #ramka danych data frame 
   
   id<-c(1,2,3)
   imie<-c("jan","kamila","arek")
   plec<-c("m","k","m")
   
   ?data.frame
   
   mojaRamkaDanych<- data.frame(numer=id,imie,plec)
   
   mojaRamkaDanych[2,'imie']
   mojaRamkaDanych[2,2]
   mojaRamkaDanych[2,]
   mojaRamkaDanych[,1]
   
   class(mojaRamkaDanych)
   summary(mojaRamkaDanych)

   
   View(mojaRamkaDanych)
   
   mojaRamkaDanych$numer
   
   df1row<- data.frame(numer=4,imie="michal",plec="m")
   mojaRamkaDanych <-rbind(mojaRamkaDanych,df1row)
   
   length( mojaRamkaDanych$numer)
   length(mojaRamkaDanych)
   ncol(mojaRamkaDanych)
    liczbaWierszy<- nrow(mojaRamkaDanych)
   
   for( i in 1:liczbaWierszy  ){
        if( i>2)
          print(mojaRamkaDanych[i,])
   }
    
    for( i in 1:liczbaWierszy  ){
      if(  (mojaRamkaDanych[i,'imie']!="arek") & (mojaRamkaDanych[i,'imie']!="michal")  )
        print(mojaRamkaDanych[i,])
    }
    
    for( i in 1:liczbaWierszy  ){
      if(  (mojaRamkaDanych[i,'imie']=="arek") | (mojaRamkaDanych[i,'imie']=="michal")  )
        print(mojaRamkaDanych[i,])
    }
   
   # != == < >  & | 
   ?'&'
    rm(i)
    # usuwa wszystkie obiekty ze srodowiska rm (list=ls() )
    
    i<-1
    while (i<=liczbaWierszy){
      print(mojaRamkaDanych[i,])
      i<-i+1
    }
   
    
 podaj <- function(){
   print("witaj ")
 }
 
 podajImie <- function(a){
   #print( paste("witaj",a,sep=" ")   )
   print( paste0("witaj ",a)   )
 }
 podajImie <- function(a="user"){
   #print( paste("witaj",a,sep=" ")   )
   print( paste0("witaj ",a)   )
 }
 
 podajImie <- function(sep=","){
    
   line<-readline(prompt = paste0("Podaj swoje imie i nazwisko oddzielone ",sep," : " ) )
    podzielone<- strsplit(line,sep)
    
   print(paste0("imie: ", podzielone[[1]] [1]) )
   
   print(paste0("nazwisko: ", podzielone[[1]] [2]) )
   
 }
 
 
    
 podajImie("Lukasz")  
 podajImie()  
 
  daneDF<-read.csv2("dane.csv")
  View(daneDF)
 
 ?read.csv
 ?read.table
 ?rea
    
    
   mean(daneDF$wiek)
   median(daneDF$wiek)
   max(daneDF$wiek)
   min(daneDF$wiek)
   summary(daneDF)
    
    dttest<- read.csv("./smogKrakow2/0012017.csv" )
    View(dttest)
    
    mean(dttest$X3_pressure,na.rm = TRUE)
    

    l<-"mean"
    if ( l=="mean"){
      print(l)
    }
    if(l=="median"){
      print(l)
    }
    
    
    returnTest<- function(){
      dodatkowa<-""
      l<-"mean"
      if ( l=="mean"){
        dodatkowa<-l
      }
      else if(l=="median"){
        dodatkowa<-l
      }
      dodatkowa
    }
    
    returnTest()
    
    
    
    
    
    
    
       
l<-""
i<-1

while( i<10){
  if( i==5)
        l<-i
  i<-i+1
}


 f <- function(a){
   print(a)
 }
 
 f(a=2)
 
 