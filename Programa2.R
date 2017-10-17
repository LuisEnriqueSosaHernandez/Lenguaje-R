a<-5;
b<-"couary";
a+b;#error de variables en operaciones aritmeticas
variablenose#error en llamada de variables no declaras
plot(noexiste)#error en paso de parametros de variables inexistentes
3+TRUE#deberia ser error booleano con entero
x=c(1,3)
x[7]#Error en puntero de objeto marca na
p=1
q="hola"
v=p:q#coherencia de tipos para crear arreglo
cadena="cadena" 
arreglo=array("hola",cadena)#coherencia de tipos para crear arreglo X2  
arreglo
if(3=="hola"){ #Comparar tipos dedatos diferentes en el IF deberia ser un error
  print("hola")
}
myAdd<-function(t,r){
  t+r
}
myAdd(1,"hola")#parametros coherentes con la funcion para que el retorno sea valido
funcioncilla<-function(){#encapsulamiento de variables en metodos
  variable=5
}
variable
variable2="hola"

mode(variable2)="numeric"#error en el parseo
variable2
