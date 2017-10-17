Ingresos<-5
ingresos=6 #error por case senstitive no lo encuentra 
#es necesario asignarle un valor a la variable
ingresos2005=3
ingresos<-"hola" #se sobreescriben las variables
2005ingresos #sintactico
ingresos.mayo.2005="hola"
ingresos.mayo.2005=hola#error de asignacion de algo que no existe
#se sobreescriben las variables
mode(Ingresos)
storage.mode(Ingresos)
storage.mode(hola)#pasar un parametro que no existe
nombre="kleber"
mode(nombre)
ls(nombre)#error en parametros no encontrados
ls()
history()
history(Ingresos)#Deberia mostrar un error no hace nada
?solve
help(solve)
help(storage.mode)
5+2
ingresos="hola"
5+ingresos #eror en operaciones con tipo de dato diferente
5/2+1
8/2/3
?+"sintactico"
?"+"
5/3
5%%3
5%3 #no existe ese operador solo
5%/%3
6.5%/%3.1 #division entera con numeros reales, se hace entero
1/0 #Reconoce indeterminaciones etc
a=-5/0
0/0
a+5
1/a
Inf - Inf #sigue las reglas matematicas
0*Inf
0*5
a=5 4+4 #error de instruccion ,\n
a=3;b=5 
#para tenerlos en la misma linea 
#c is a command C no sintactico
a
b
#bloques de codigo
{
 print(a+3)
  b-7
}
a+b-
2#linea inconclusa
rm (a)#remover variables
rm (nose) #no se pueden borrar variables inexistentes
ls()
rm(b,ingresos)0
?rm
rm(list=ls())#borra todo
ls()
#rm(if(ls().length()!=NULL)) #no se puede hacer if dentro de rm
a=c(5,10.2,8.1,7.3) #vector
a=c(5,a,"hola") #distintos tipos hasta vector
length(a)
a
b=c(1,"kike","couary")
mode(b)
is.atomic(b)
is.atomic(a)
d=c("Andrea","Yazmin",8.6)
is.atomic(d)
x=list("Jose luis","Yolotl",3.4,TRUE)
is.atomic(x)
y=list(c(3,4,5),c("a","b","c"))
y
is.atomic(y)
is.atomic(y[[1]])#doble corchete accede a elemento lista
a[3]#un corchete elemento vector
a[c(1,3)]
a[c(1,100)]#posicion inexistente
a[-c(1-3)]
a[1,3]#error matriz y arreglos
a[a>8]#condiciones en punteros
l=c("kike","couary")
m=c(1,2)
names(m)=l#agrupacion de nombres y numeros
m
a="hola"
sum(m)
sum(a)#error de tipos invalidos para suma
mean(m)
var(m)
sd(m)
?sd
sqrt(16)
sqrt(var(a))#error de coherencia
sqrt(var(m))
median(m)
vector1=c("kike")
vector2=c(1,2,3)
names(vector2)=vector1
vector2 #diferentes longitudes se quedan vacios
max(vector2)
min(vector2)
prod(vector2)
sum(vector2)
cumsum(vector2)
cumprod(vector2)
x=c(1,2,3,4)
x=1:4
x
a=5
x=1:"hola"#coherencia de tipos
x=1:4
y=x*a
y
y=a %% x
y
y=a-x
y
x
y=x+10
y
y=x+c(10,20)#el vector se recicla
y=x+c(10,20,30)
y=x*a+x-c(10,20)
y
var(y)
sum((y-mean(y))^2)(length(y)-1)#error en logica de operacion
sum((y-mean(y))^2)/(length(y)-1)
mean(a)
#contiene comandos para evitar bucles
sort(m)
m
sort(m,decreasing = TRUE)
order(m)
m
j=order(m)
m[j]
b[order(a)]
k=order(m,decreasing = TRUE)
k
rm(list=ls())
?data.frame
datos=data.frame(estatura=c(1.78,1.70,1.72,1.76),
                 peso=c(88,76,55,65),
                 row.names = c("kike","couary","yazmin","andrea"))
datos
estatura#variables dentro de variables
sum(datos)
summary(datos)
history()
#diferente numero de columnas error
datos=data.frame(estatura=c(1.78,1.70,1.72,1.76),
                 peso=c(88,76,65),
                 row.names = c("kike","couary","yazmin","andrea"))
datos=data.frame(estatura=c(1.78,1.70,1.72,1.76),
                 peso=c(88,76,55,65),
                 row.names = c("kike","couary","yazmin","andrea"))
datos
#devolver vectores
datos$estatura
datos$peso[2]
datos$peso[3]=45
datos
datos[3,2]=55
datos
mode(datos)
mean(datos)
datos
mean(datos)
var(datos)
sum(datos)
min(datos)
apply(datos,2,sum)
sapply(datos,min)
x=factor(c(1,3,2,4,1,2,4,3),
         labels=c("verde","azul","rojo","amarillo"))
x
mode(x)
x=factor(c("verde","rojo","azul","amarillo","verde"))
mean(x)
summary(x)
table(x)
plot(x)#graficar
plot(datos$peso)
plot(peso~estatura,data=datos)
datos
datos$provincia=factor(c(1,1,2,2),
                       labels = (c("Tungurahua","Manabi")))
datos                 
plot(peso~provincia,data=datos)
summary(datos)
datos["Cryderman",]=c(1.85,250,"Manabi")
datos
row.names(datos)[5]="Cryderman"
ls()
datos
plot(peso~provincia,data=datos)
str(datos)
mode(datos$estatura)="numeric"
mode(datos$provincia)="numeric" #error en el parseo de string a integer
mode(datos$peso)="numeric"
str(datos)
datos=datos[-5,]
datos
datos["Cryderman",]=list(1.85,250,"Manabi")
datos
plot(peso~provincia,data=datos)
boxplot(datos$peso)
seq(1,5,length=20)
curve(x^2,from=-3,to=3)
#matrices
a=matrix(c(1,2,3,4,5,6,7,8,9))
a
a=matrix(1:9,ncol=3)
a[,3]
a[2,3]
a[2,]
str(a)
attributes(a)
dim(a)
arreglo=array(1,2,3,4,5,6)#error de argumentos no utilizados
arreglo2=array(1,2)
x=array(1:24,c(2,3,4))
x[1,1,1]
x[1,2,1]
x[1,2,3]
x
#ciclos
for (i in  1:7){
  print(i)
}
for (i in  1:7){
  if(i==3){
  print(i)
}
}
for (i in  1:7){
  if(i==3)
    next
  print(i)
}
for(i in i:7){
if(i!=3){
  print(i)
}else{
  break
}
  
}
for(i in i:7){
  if (i==3)
    break
  print(i)
}
while(k<10){ #while error de busqueda
  print(k)
}
k=1
while(k<10){
  
  print(k)
  k=k+1
}
#functions
myAdd<-function(a,b){
  c=a+b
  a=a+b
}
print(myAdd(2,3))
print(myAdd("hola",3))#error de operacion en funcion
c=myAdd(3,2)
c
myAdd2<-c
myAdd2(3,2)#no encuentra la funcion
myAdd2<-myAdd
myAdd2=3
myAdd2(3,5)
myAdd3<-function(a,b){#retorna la ultima linea
  a+b
  a*b
}
myAdd3(4,5)
myAdd<-function(a,b){
  c=a+b
  d=a*b
  list(c,d)#conversion explicita
}
myAdd(3,2)
if (3>TRUE){
  print("hola")
}
if(3=="hol")#detalle
  print("hola")
}
for(i in 1:7){
  print (i)
}


