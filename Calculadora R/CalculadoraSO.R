t <- proc.time()


a="2*3+4-44/2*4"
a="4+20/6*10-4"
a="20+15-30/(100+20-12*10/4)*5"

b=c()
b2=c()
b3=c()
b4=c()
b5=c()
bparentesis=c()
bparentesis1=c()
bparentesis2=c()
bparentesis3=c()
bparentesis4=c()
bparentesis5=c()
k=1;
j=1;
p=1;
cont=2
positionparentesis=0
for(i in 1:nchar(a)){
  if(substring(a,i,i)=="("){
    cont=cont-1
  }
  if(substring(a,i,i)==")"){
    cont=cont+1
  }
  if(substring(a,i,i)!="+"&&substring(a,i,i)!="-"&&substring(a,i,i)!="*"&&substring(a,i,i)!="/"){
   
  }else{
    if(cont==2){
    b[k]=substring(a,j,i-1)
    k=k+1;
    b[k]=substring(a,i,i)
    k=k+1
    j=i+1
    }
  }
  if(i==nchar(a)){
    b[k]=substring(a,j,i)
    
  }
  
}
for(i in 1:length(b)){
  if(substring(b[i],1,1)=="("){
    bparentesis[1]=substring(b[i],2,(nchar(b[i])-1))
    positionparentesis=i
    
  }
}
#parentesis
#separando el del parentesis
k=1
j=1

for(i in 1:nchar(bparentesis[1])){
  
  
  if(substring(bparentesis[1],i,i)!="+"&&substring(bparentesis[1],i,i)!="-"&&substring(bparentesis[1],i,i)!="*"&&substring(bparentesis[1],i,i)!="/"){
    
  }else{
    
      bparentesis1[k]=substring(bparentesis[1],j,i-1)
      k=k+1;
      bparentesis1[k]=substring(bparentesis[1],i,i)
      k=k+1
      j=i+1
    
  }
  if(i==nchar(bparentesis[1])){
    bparentesis1[k]=substring(bparentesis[1],j,i)
    
  }
  
  
}

#division
for(i in 1:length(bparentesis1)){
  if(i%%2==0){
    if(bparentesis1[i]=="/"){
      bparentesis1[i-1]=as.double(bparentesis1[i-1])/as.double(bparentesis1[i+1])
      bparentesis1[i]=NaN
      bparentesis1[i+1]=NaN
    }
  }
}
k=1
for(i in 1:length(bparentesis1)){
  if(bparentesis1[i]!=NaN){
    bparentesis2[k]=bparentesis1[i]
    k=k+1
  }
}

#multiplicacion

for(i in 1:length(bparentesis2)){
  if(i%%2==0){
    if(bparentesis2[i]=="*"){
      bparentesis2[i-1]=as.double(bparentesis2[i-1])*as.double(bparentesis2[i+1])
      bparentesis2[i]=NaN
      bparentesis2[i+1]=NaN
    }
  }
}
k=1
for(i in 1:length(bparentesis2)){
  if(bparentesis2[i]!=NaN){
    bparentesis3[k]=bparentesis2[i]
    k=k+1
  }
}

#suma

for(i in 1:length(bparentesis3)){
  if(i%%2==0){
    if(bparentesis3[i]=="+"){
      bparentesis3[i-1]=as.double(bparentesis3[i-1])+as.double(bparentesis3[i+1])
      bparentesis3[i]=NaN
      bparentesis3[i+1]=NaN
    }
  }
}
k=1
for(i in 1:length(bparentesis3)){
  if(bparentesis3[i]!=NaN){
    bparentesis4[k]=bparentesis3[i]
    k=k+1
  }
}

#resta

for(i in 1:length(bparentesis4)){
  if(i%%2==0){
    if(bparentesis4[i]=="-"){
      bparentesis4[i-1]=as.double(bparentesis4[i-1])-as.double(bparentesis4[i+1])
      bparentesis4[i]=NaN
      bparentesis4[i+1]=NaN
    }
  }
}
k=1
for(i in 1:length(bparentesis4)){
  if(bparentesis4[i]!=NaN){
    bparentesis5[k]=bparentesis4[i]
    k=k+1
  }
}


b[positionparentesis]=bparentesis5[1]#Actualizando el position parentesis


#yasinparentesis

#division
for(i in 1:length(b)){
  if(i%%2==0){
   if(b[i]=="/"){
     b[i-1]=as.double(b[i-1])/as.double(b[i+1])
     b[i]=NaN
     b[i+1]=NaN
   }
  }
}
k=1
for(i in 1:length(b)){
  if(b[i]!=NaN){
    b2[k]=b[i]
    k=k+1
  }
}

#multiplicacion

for(i in 1:length(b2)){
  if(i%%2==0){
    if(b2[i]=="*"){
      b2[i-1]=as.double(b2[i-1])*as.double(b2[i+1])
      b2[i]=NaN
      b2[i+1]=NaN
    }
  }
}
k=1
for(i in 1:length(b2)){
  if(b2[i]!=NaN){
    b3[k]=b2[i]
    k=k+1
  }
}

#suma

for(i in 1:length(b3)){
  if(i%%2==0){
    if(b3[i]=="+"){
      b3[i-1]=as.double(b3[i-1])+as.double(b3[i+1])
      b3[i]=NaN
      b3[i+1]=NaN
    }
  }
}
k=1
for(i in 1:length(b3)){
  if(b3[i]!=NaN){
    b4[k]=b3[i]
    k=k+1
  }
}


#resta

for(i in 1:length(b4)){
  if(i%%2==0){
    if(b4[i]=="-"){
      b4[i-1]=as.double(b4[i-1])-as.double(b4[i+1])
      b4[i]=NaN
      b4[i+1]=NaN
    }
  }
}
k=1
for(i in 1:length(b4)){
  if(b4[i]!=NaN){
    b5[k]=b4[i]
    k=k+1
  }
}
b5
proc.time()-t 

#Sin optimizar pesa 3.98 KB


