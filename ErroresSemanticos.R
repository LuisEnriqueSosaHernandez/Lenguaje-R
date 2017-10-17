a=10
b=15
print("Errores en operaciones aritmeticas ")
print(a+b+c)
print("Error en parametros inexistentes")
sum(variable2)
print("Error booleanos")
resta1=5
resta2=TRUE
restando=resta1-resta2
restando
print("Error en Punteros")
objeto=c(1,2,3)
objeto[8]
print("Coherencia de tipos en la creacion de arreglos")
p=1
q="hola"
v=p:q
v
cadena="hola"
arreglo=array("hola",cadena)  
arreglo
print("Comparar tipos de datos diferentes en el IF deberia ser un error")
if(3=="hola"){
  print("hola")
}
print("parametros coherentes con la funcion para que el retorno sea valido")
myAdd<-function(t,r){
  t+r
}

myAdd(1,"hola")
print("encapsulamiento de variables en metodos")
funcioncilla<-function(){
  variable=5
}
variable
print("error en el parseo")
variable2="hola"
mode(variable2)="numeric"
variable2

