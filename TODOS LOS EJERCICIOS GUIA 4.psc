-///COMIENZO GUIA 4 :
Algoritmo sin_titulo
	definir ent,i Como Entero
	definir cad como cadena
	Dimension ent(5)
	dimension cad(3)
	cad(0)="a"
	Escribir cad(0)
	para i<-0 hasta 4 Hacer
		ent(i)=i
		Escribir ent(i)
	FinPara
FinAlgoritmo
//
Algoritmo vectores
	Definir vector,i Como Entero
	Dimension vector(6)
	Para i<-0 Hasta 5 Con Paso 1 Hacer
		vector(i)=i
	Fin Para
FinAlgoritmo
//
Algoritmo vectores
	Definir vector,i,var Como Entero
	Dimension vector(6)
	Para i<-0 Hasta 5 Con Paso 1 Hacer
		vector(i)=i
		Escribir Sin Saltar vector(i) ", "
	Fin Para
	var=vector(3)
	Escribir "La variable guardada es: " var "."
FinAlgoritmo
//
///Ej guia 4 1 (Comienzo vector)

Algoritmo sin_titulo
	definir num,i,numer Como Entero
	Dimension num(5)
	para i<-0 Hasta 4 Hacer
		leer numer
		num(i)=numer
		Escribir "La posicion " i " esta ocupada por el numero: " num(i)
	FinPara
FinAlgoritmo

///Ej guia 4 2

Algoritmo sin_titulo
	Definir vecnum,i,num,suma,resta,mult Como Real
	Dimension vecnum(10)
	suma=0
	resta=0
	mult=1
	para i<-0 Hasta 9 Hacer
		leer num
		vecnum(i)=num
		suma=suma+vecnum(i)
		resta=resta-vecnum(i)
		mult=mult*vecnum(i)
	FinPara
	Escribir "La suma de todos los numeros es: " suma
	Escribir "La resta de todos los numeros es: " resta
	Escribir "La multiplicacion de todos los numeros es: " mult
FinAlgoritmo

///Ej guia 4 3

Algoritmo sin_titulo
	Definir vecnum,num,i,busc,numbusc,cont Como entero
	Dimension vecnum(5)
	cont=0
	para i<-0 Hasta 4 Hacer
		Escribir "Ingrese un numero para la posicion " i " del arreglo:"
		leer num
		vecnum(i)=num
	FinPara
	Escribir "Ingrese el numero a buscar en el arreglo: "
	leer numbusc
	para i<-0 Hasta 4 Hacer
		si vecnum(i)=numbusc Entonces
			Escribir "La posicion " i " contenia el numero: " numbusc
			cont=cont+1
		SiNo
			si cont=0 Entonces
				Escribir "El numero no se encontro en ningun arreglo." 
			FinSi
		FinSi
	FinPara
FinAlgoritmo

///Ej guia 4 4

Algoritmo sin_titulo
	Definir opc,mostvec Como caracter
	Definir vectora,vectorb,vectorc,n,i Como Entero
	Escribir "Ingrese el tamanio del vector: "
	leer n
	Dimension vectora(n)
	Dimension vectorb(n)
	Dimension vectorc(n)
	Hacer
		Escribir "Ingrese que desea calcular: "
		Escribir "Opcion A: Se llena un vector de tamanio N con valores aleatorios."
		Escribir "Opcion B: Se llena un vector de tamanio N con valores aleatorios."
		Escribir "Opcion C: Llena el vector con la suma de las opciones A y B."
		Escribir "Opcion D: Llena el vector con la resta de las opciones A y B."
		Escribir "Opcion E: Ingresar un vector y se mostrara por pantalla."
		Escribir "Opcion F: Salir."
		leer opc
		mientras opc<"a" o opc>"f" Hacer
			Escribir "Error, ingrese una letra valida para el menu: "
			leer opc
		FinMientras
		opc=Minusculas(opc)
		Segun opc Hacer
			"a":
				para i<-0 Hasta n-1 Hacer
					vectora(i)=Aleatorio(-100,100)
				FinPara
			"b":
				para i<-0 Hasta n-1 Hacer
					vectorb(i)=Aleatorio(-100,100)
				FinPara
			"c": 
				para i<-0 Hasta n-1 Hacer
					vectorc(i)=vectora(i)+vectorb(i)
				FinPara
			"d":
				para i<-0 Hasta n-1 Hacer
					vectorc(i)=vectorb(i)-vectora(i)
				FinPara
			"e":
				Escribir "Ingrese un vector a mostrar: "
				leer mostvec
				Mientras mostvec<"a" y mostvec>"c" Hacer
					Escribir "Error. Ingrese un vector valido: "
					leer mostvec
				FinMientras
				si mostvec="a" Entonces
					Escribir "Los valores del vector A son: "
					para i<-0 Hasta n-1 Hacer
						Escribir "En el indice " i " Se encuentra el valor " vectora(i)
					FinPara
				SiNo
					si mostvec="b" Entonces
						Escribir "Los valores del vector B son: "
						para i<-0 Hasta n-1 Hacer
							Escribir "En el indice " i " Se encuentra el valor " vectorb(i)
						FinPara
					SiNo
						si mostvec="c" Entonces
							Escribir "Los valores del vector C son: "
							para i<-0 Hasta n-1 Hacer
								Escribir "En el indice " i " Se encuentra el valor " vectorc(i)
							FinPara
						SiNo
							si mostvec="d" Entonces
								Escribir "Los valores del vector D son: "
								para i<-0 Hasta n-1 Hacer
									Escribir "En el indice " i " Se encuentra el valor " vectorc(i)
								FinPara
							FinSi
						FinSi
					FinSi
				FinSi
		FinSegun
	Mientras Que opc<>"f"
FinAlgoritmo

///Ej guia 4 5

Funcion retorno<-vecmasgrande(vect)
	Definir retorno,i como entero
	retorno=0
	para i<-0 Hasta 4 Hacer
		si vect(i)>retorno Entonces
			retorno=vect(i)
		FinSi
	FinPara
FinFuncion
Algoritmo sin_titulo
	Definir num,i,vectornum Como Entero
	Dimension vectornum(5)
	Para i<-0 Hasta 4 Hacer
		Escribir "Ingrese el numero " i " a guardar en el vector: "
		leer num
		vectornum(i)=num
	FinPara
	Escribir "El numero mas grande del vector es: " vecmasgrande(vectornum)
FinAlgoritmo

///Ej guia 4 6

Algoritmo sin_titulo
	Definir vec,carcualq Como Caracter
	Definir cad,let como cadena
	Definir i,posarr como entero
	Dimension vec(20)
	Escribir "Ingrese una frase o palabra para rellenar el vector: "
	leer cad
	para i<-0 Hasta 19 Hacer
		vec(i)=Subcadena(cad,i,i)
	FinPara
	Escribir "Ingrese un caracter cualquiera: "
	leer carcualq
	Escribir "Ingrese una posicion para ingresar el caracter en el arreglo: "
	leer posarr
	si vec(posarr)= "" o vec(posarr)= " " Entonces
		vec(posarr)=carcualq
	SiNo
		Escribir "Esa posicion se encontraba ocupada, gracias."
	FinSi
	Escribir "La frase quedaria: "
	para i<-0 Hasta 19 Hacer
		Escribir Sin Saltar vec(i)
	FinPara
	Escribir "."
FinAlgoritmo

///Ej guia 4 7

Funcion retorno <-igual(aa,bb)
	Definir retorno Como Logico
	Definir i,cont como entero
	cont=0
	para i<-0 Hasta 4 Hacer
		si aa(i)=bb(i) Entonces
			cont=cont+1
			si cont=5 Entonces
				retorno=Verdadero
			SiNo
				retorno=Falso
			FinSi
		FinSi
	FinPara
FinFuncion
SubProceso vecaleatorio(a,b)
	Definir i Como Entero
	para i<-0 Hasta 4 Hacer
		a(i)=Aleatorio(0,10)
		Escribir "Para el vector A en el indice " i " se asigno el numero: " a(i)
		b(i)=Aleatorio(0,10)
		Escribir "Para el vector B en el indice " i " se asigno el numero: " b(i)
	FinPara
FinSubProceso
Algoritmo sin_titulo
	Definir vectora,vectorb Como Entero
	Dimension vectora(5)
	Dimension vectorb(5)
	vecaleatorio(vectora,vectorb)
	Escribir "¿Todos los numeros del arreglo A son iguales al B? " igual(vectora,vectorb)
FinAlgoritmo

///Ej guia 4 8 (Comienzo matrices)

Algoritmo sin_titulo
	Definir mat,i,j,num Como Entero
	Dimension mat(3,3)
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Escribir "Ingrese un valor para almacenarlo en la posicion " i "," j
			leer num
			mat(i,j)=num
		FinPara
	FinPara
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Escribir "En la posicion " i "," j " se encuentra el numero: " mat(i,j)
		FinPara
	FinPara
FinAlgoritmo

///Ej guia 4 9

Algoritmo sin_titulo
	Definir mat,num,i,j como entero
	Dimension mat(5,5)
	para i<-0 Hasta 4 Hacer
		para j<-0 Hasta 4 Hacer
			mat(i,j)=Aleatorio(0,10)
			Escribir "En el indice " i "," j " se guardo el num " mat(i,j)
		FinPara
	FinPara
	Escribir "Ingrese un numero a buscar en la matriz y si se encuentra se mostrara en que posicion: "
	leer num
	para i<-0 Hasta 4 Hacer
		para j<-0 Hasta 4 Hacer
			si num=mat(i,j) Entonces
				Escribir "El numero " num " se encontro en la posicion " i "," j
			FinSi
		FinPara
	FinPara
FinAlgoritmo

///Ej guia 4 10

SubProceso suma(ma,nu1,nu2)
	Definir i,j,su Como Entero
	su=0
	para i<-0 Hasta nu1-1 Hacer
		para j<-0 Hasta nu2-1 Hacer
			su=su+ma(i,j)
		FinPara
	FinPara
	Escribir "La suma de todos los contenidos de la matriz es: " su
FinSubProceso
SubProceso aleat(a,n1,n2)
	Definir i,j Como Entero
	para i<-0 Hasta n1-1 Hacer
		para j<-0 Hasta n2-1 Hacer
			a(i,j)=Aleatorio(0,10)
			Escribir "En el indice " i "," j " se encuentra el numero: " a(i,j)
		FinPara
	FinPara
FinSubProceso
Algoritmo sin_titulo
	Definir mat,i,j,num1,num2 Como Entero
	Escribir "Ingrese un numero para la dimension de la matriz: "
	leer num1
	Escribir "Ingrese otro numero para la dimension de la matriz: "
	leer num2
	Dimension mat(num1,num2)
	aleat(mat,num1,num2)
	suma(mat,num1,num2)
FinAlgoritmo

///Ej guia 4 11

SubProceso esc(maa)
	Definir i,j Como Entero
	para i<-0 Hasta 4 Hacer
		para j<-0 Hasta 4 Hacer
			Escribir Sin Saltar maa(i,j) " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso
SubProceso alea(matriz)
	Definir i,j Como Entero
	para i<-0 Hasta 4 Hacer
		para j<-0 Hasta 4 Hacer
			matriz(i,j)=Aleatorio(0,9)
		FinPara
		matriz(i,i)=0
	FinPara
FinSubProceso
Algoritmo sin_titulo
	Definir mat Como Entero
	Dimension mat(5,5)
	alea(mat)
	esc(mat)
FinAlgoritmo

///Ej guia 4 12

Algoritmo sin_titulo
	Definir mat,pal,desc como caracter
	Definir i,j,cont Como Entero
	cont=0
	Dimension mat(3,3)
	Escribir "Ingrese una palabra de 9 letras: "
	leer pal
	Mientras Longitud(pal) <> 9 Hacer
		Escribir "Error. La palabra ingresada no contiene 9 letras, ingrese una nuevamente: "
		leer pal
	FinMientras
	para i<-0 Hasta 2 Hacer
		para j<-0 Hasta 2 Hacer
			mat(i,j)=Subcadena(pal,cont,cont)
			Escribir Sin Saltar mat(i,j) " "
			cont=cont+1
		FinPara
		Escribir " "
	FinPara
FinAlgoritmo 

///Ej guia 4 13

Algoritmo sin_titulo
	Definir mat,num,i,j,llenarmat,sumalinea,sumadiag,sumacol,sumacol1,sumacol2,sumalinea1,sumadiag1 Como Entero
	Definir vf Como Logico
	Escribir "Ingrese el tamanio de la matriz cuadrada (mismo lado de filas que columnas),(Max.10):"
	leer num
	mientras num>10 Hacer
		Escribir "Error. Tamanio maximo permitido: 10. Por favor intente nuevamente: "
		leer num
	FinMientras
	Dimension mat(num,num)
	sumadiag=0
	para i<-0 Hasta num-1 Hacer
		para j<-0 Hasta num-1 Hacer
			Escribir "Ingrese un numero para la posicion " i "," j " de la matriz entre 1 y 9: "
			leer llenarmat
			Mientras llenarmat<1 o llenarmat>9 Hacer
				Escribir "Error. Ingrese un numero entre 1 y 9: "
				leer llenarmat
			FinMientras
			mat(i,j)=llenarmat
		FinPara
	FinPara
	sumalinea1=0
	para i<-0 Hasta num-1 Hacer
		sumalinea=0
		para j<-0 Hasta num-1 Hacer
			sumalinea=sumalinea+mat(i,j)
		FinPara
		si sumalinea1=sumalinea Entonces
			vf=Verdadero
		SiNo
			vf=Falso
		FinSi
		sumalinea1=sumalinea
	FinPara
	si vf Entonces
		sumacol1=0
		para i<-0 Hasta num-1 Hacer
			sumacol=0
			para j<-0 Hasta num-1 Hacer
				sumacol=sumacol+mat(j,i)
				
			FinPara
			si sumacol1=sumacol Entonces
				vf=Verdadero
			SiNo
				vf=Falso
			FinSi
			sumacol1=sumacol
		FinPara
		si vf Entonces
			sumadiag1=0
			sumadiag=0
			para i<-0 Hasta num-1 Hacer
				para j<-0 Hasta num-1 Hacer
					si j=i Entonces
						sumadiag=sumadiag+mat(i,j)
						
					FinSi
				FinPara
				sumadiag1=sumadiag
			FinPara
			si sumadiag1=sumadiag Entonces
				vf=Verdadero
			SiNo
				vf=Falso
			FinSi
		FinSi
		si vf Entonces
			sumadiag=0
			para j<-0 Hasta num-1 Hacer
				i=i-1
				sumadiag=sumadiag+mat(j,i)
			FinPara
			si sumadiag1=sumadiag Entonces
				vf=Verdadero
			SiNo
				vf=Falso
			FinSi
		FinSi
	FinSi
	si vf Entonces
		Escribir "La matriz es magica."
	SiNo
		Escribir "La matriz no es magica."
	FinSi
FinAlgoritmo

///Ej extra guia 4 1

Algoritmo sin_titulo
	Definir vec1,vec2,i Como Entero
	Dimension vec1(5)
	Dimension vec2(5)
	para i<-0 Hasta 4 Hacer
		vec1(i)=Aleatorio(1,9)
		vec2(i)=vec1(i)
		Escribir "El valor del vector 1 en la posicion " i " es " vec1(i)
		Escribir "El valor del vector 2 en la posicion " i " es " vec2(i)
	FinPara
FinAlgoritmo

///Ej extra guia 4 2

Algoritmo sin_titulo
	Definir tamvec,num,sum,prom,vec,i como real
	Escribir "Ingrese el tamanio del vector: "
	leer tamvec
	Dimension vec(tamvec)
	sum=0
	prom=0
	Para i<-0 Hasta tamvec-1 Hacer
		Escribir "Ingrese un numero y se guardara en el indice " i " del vector:"
		leer num
		vec(i)=num
		sum=sum+vec(i)
		prom=sum/tamvec
	FinPara
	Escribir "La suma de los numeros comprendidos en el vector es : " sum
	Escribir "El promedio de los numeros comprendidos en el vector es: " prom
FinAlgoritmo

///Ej extra guia 4 3

Algoritmo sin_titulo
	Definir vec2,num,i Como Entero
	Definir nom,vec1 como cadena
	Escribir "Digite la dimension de los vectores (ambas seran iguales): "
	leer num
	Dimension vec1(num), vec2(num)
	para i<-0 hasta num-1 Hacer
		Escribir "Ingrese un nombre: "
		leer nom
		vec1(i)=nom
		vec2(i)=(Longitud(nom))
	FinPara
	para i<-0 Hasta num-1 Hacer
		Escribir "El nombre guardado en el vector 1 e indice " i " es: " vec1(i)
		Escribir "La longitud del mismo es: " vec2(i)
	FinPara
FinAlgoritmo

///Ej extra guia 4 4

Algoritmo sin_titulo
	Definir vec,i,def,reg,buen,exc Como Entero
	Dimension vec(100)
	def=0
	reg=0
	buen=0
	exc=0
	para i<-0 Hasta 99 Hacer
		vec(i)=Aleatorio(0,20)
		si vec(i)>=0 y vec(i)<=5 Entonces
			def=def+1
		SiNo
			si vec(i)>=6 y vec(i)<=10 Entonces
				reg=reg+1
			SiNo
				si vec(i)>=11 y vec(i)<=15 Entonces
					buen=buen+1
				SiNo
					si vec(i)>=16 y vec(i)<=20 Entonces
						exc=exc+1
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir "La cantidad de alumnos deficientes es de: " def
	Escribir "La cantidad de alumnos regulares es de: " reg
	Escribir "La cantidad de alumnos buenos es de: " buen
	Escribir "La cantidad de alumnos excelentes es de: " exc
FinAlgoritmo

///Ej extra guia 4 5

Algoritmo sin_titulo
	Definir vec,carcualq Como Caracter
	Definir cad,let como cadena
	Definir i,posarr como entero
	Dimension vec(20)
	Escribir "Ingrese una frase o palabra para rellenar el vector: "
	leer cad
	para i<-0 Hasta 19 Hacer
		vec(i)=Subcadena(cad,i,i)
	FinPara
	Escribir "Ingrese un caracter cualquiera: "
	leer carcualq
	Escribir "Ingrese una posicion para ingresar el caracter en el arreglo: "
	leer posarr
	si vec(posarr)= "" o vec(posarr)= " " Entonces
		vec(posarr)=carcualq
	SiNo
		para i<-0 Hasta 19 Hacer
			si i=posarr Entonces
				vec(i)=concatenar(carcualq,vec(i))
			SiNo
				vec(i)=Subcadena(cad,i,i)
			FinSi
		FinPara
	FinSi
	Escribir "La frase quedaria: "
	para i<-0 Hasta 19 Hacer
		Escribir Sin Saltar vec(i)
	FinPara
	Escribir ""
FinAlgoritmo

///Ej guia 4 6

Funcion retorno<-dif(a,b)
	Definir retorno como entero
	retorno=b-a
FinFuncion
Algoritmo sin_titulo
	Definir vec,i,chico,grande Como Entero
	Dimension vec(5)
	grande=0
	para i<-0 Hasta 4 Hacer
		vec(i)=Aleatorio(0,10)
		si i=0 Entonces
			grande=vec(i)
			chico=vec(i)
		FinSi
		si vec(i)>=grande Entonces
			grande=vec(i)
		FinSi
		si vec(i)<=chico
			chico=vec(i)
		FinSi
	FinPara
	Escribir "El numero mas chico es: " chico
	Escribir "El numero mas grande es: " grande
	Escribir "La diferencia que hay entre el numero mas chico y el mas grande es: " dif(chico,grande)
FinAlgoritmo

///Ej extra guia 4 7

Funcion retorno<-suma(vector,n)
	Definir retorno Como Entero
	si n=1 Entonces
		retorno=vector(0)
	SiNo
		retorno=vector(n-1)+suma(vector,n-1)
	FinSi
FinFuncion
Algoritmo sin_titulo
	Definir vec,i,num Como Entero
	Escribir "Ingrese el tamanio del vector: "
	leer num
	Dimension vec(num)
	para i<-0 Hasta num-1 Hacer
		vec(i)=Aleatorio(0,10)
	FinPara
	Escribir "La suma de los numeros comprendidos en el vector es: " suma(vec,num)
FinAlgoritmo

///Ej extra guia 4 8

Funcion retorno<-mult(vector,n)
	Definir retorno,i como entero
	retorno=1
	Para i<-0 Hasta n-1 Hacer
		retorno=retorno*vector(i)
	FinPara
FinFuncion
Algoritmo sin_titulo
	Definir vec,num,i Como Entero
	Escribir "Ingrese el tamanio del vector: "
	leer num
	Dimension vec(num)
	para i<-0 Hasta num-1 Hacer
		vec(i)=Aleatorio(1,10)
		Escribir vec(i)
	FinPara
	Escribir "El producto de los num comprendidos en el vector es: " mult(vec,num)
FinAlgoritmo

///Ej extra guia 4 9

SubProceso numalea(matriz)
	Definir i,j Como Entero
	para i<-0 Hasta 2 Hacer
		para j<-0 Hasta 2 Hacer
			matriz(i,j)=Aleatorio(0,9)
		FinPara
	FinPara
	mostmat(matriz)
FinSubProceso
SubProceso mostmat(vermat)
	Definir i,j Como Entero
	para i<-0 Hasta 2 Hacer
		para j<-0 Hasta 2 Hacer
			Escribir Sin Saltar vermat(i,j) " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso
Algoritmo sin_titulo
	Definir mat como entero
	Dimension mat(3,3)
	numalea(mat)
FinAlgoritmo

///Ej extra guia 4 10

Algoritmo sin_titulo
	Definir mat,n,m,i,j como entero
	Escribir "Ingrese el valor de las filas de la matriz: "
	leer n
	Escribir "Ingres el valor de las columnas de la matriz: "
	leer m
	Dimension mat(n,m)
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta m-1 Hacer
			mat(i,j)=Aleatorio(1,100)
			Escribir Sin Saltar mat(i,j) " "
		FinPara
		Escribir ""
	FinPara
	Escribir "La matriz traspuesta quedaria: "
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta m-1 Hacer
			Escribir Sin Saltar mat(j,i) " "
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo

///Ej extra guia 4 11

Algoritmo sin_titulo
	Definir mat,i,j,n,m Como Entero
	Escribir "Ingrese la cantidad de columnas de la matriz: "
	leer n
	Escribir "Ingrese la cantidad de filas de la matriz: "
	leer m
	Dimension mat(n,m)
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta m-1 Hacer
			si i=0 o i=n-1 Entonces
				mat(i,j)=1
			SiNo
				mat(i,j)=0
			FinSi
			si j=0 o J=m-1 Entonces
				mat(i,j)=1
			FinSi
		FinPara
	FinPara
	Para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta m-1 Hacer
			Escribir Sin Saltar mat(i,j) " "
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo

///Ej extra guia 4 12

Algoritmo sin_titulo
	Definir mat1,mat2,n,i,j,mult Como Entero
	Escribir "Ingrese el rango de las matrices: "
	leer n
	Dimension mat1(n,n), mat2(n,n),mult(n,n)
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta n-1 Hacer
			mat1(i,j)=Aleatorio(1,10)
			Escribir Sin Saltar mat1(i,j) " <- matriz a "
			mat2(i,j)=Aleatorio(1,10)
			Escribir Sin Saltar mat2(i,j) " <- matriz b "
		FinPara
		Escribir "fin"
	FinPara
	Escribir "La multiplicacion de cada una es: "
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta n-1 Hacer
			mult(i,j)=mat1(i,j)*mat2(i,j)
			Escribir Sin Saltar mult(i,j) " "
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo

///Ej extra guia 4 13

Algoritmo sin_titulo
	Definir mat,n,i,j,num1,num2 Como Entero
	Escribir "Ingrese la cantidad de filas que desea que posea la martiz: "
	leer n
	Dimension mat(3,n)
	para i<-0 Hasta 2 Hacer
		para j<-0 Hasta n-1 Hacer
			si i=0 Entonces
				Escribir "Ingrese un numero a sumar: "
				leer num1
				mat(i,j)=num1
			sino
				si i=1 Entonces
					Escribir "Ingrese otro numero a sumar: "
					leer num2
					mat(i,j)=num2
				SiNo
					si i=2 Entonces
						mat(i,j)=mat(0,j)+mat(1,j)
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta 2 Hacer
			si j=0 Entonces
				Escribir Sin Saltar mat(j,i) "+"
			SiNo
				si j=1 Entonces
					Escribir Sin Saltar mat(j,i) "="
				sino
					si j=2 Entonces
						Escribir mat(j,i)
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
FinAlgoritmo

///Ej extra guia 4 14

Algoritmo sin_titulo
	Definir mat,vec,i,j Como Entero
	Dimension mat(3,3)
	Dimension vec(3)
	para i<-0 Hasta 2 Hacer
		vec(i)=Aleatorio(1,2)
		Escribir vec(i)
		para j<-0 Hasta 2 Hacer
			mat(i,j)=Aleatorio(1,9)
			Escribir "aleatorio " mat(i,j)
		FinPara
	FinPara
	para i<-0 Hasta 2 Hacer
		para j<-0 Hasta 2 Hacer
			mat(j,i)=mat(j,i)*vec(j)
			Escribir Sin Saltar  mat(j,i) " "
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo

///Ej extra guia 4 15

Algoritmo sin_titulo
	Definir i, j, n, m, matriz, suma1, suma2, max como entero
	Definir dias, producto, ventas, productomax como cadena
	n = 6
	m = 6
	max = 0
	Dimension matriz(n,m)
	Dimension dias(6)
	Dimension producto(6)
	Dimension ventas(6)
	dias(0)="lunes"
	dias(1)="martes"
	dias(2)="miercoles"
	dias(3)="jueves"
	dias(4)="viernes"
	dias(5)="total"
	producto(5)="total"
	Para i <- 0 Hasta 4 Hacer
		Escribir "Ingrese el producto nº ",i+1
		leer producto(i)
	Fin Para
	Para i <- 0 Hasta n-2 Hacer
		suma1 = 0
		Para j <- 0 Hasta m-1 Hacer
			si j = m-1 Entonces
				matriz(i,j) = suma1
			SiNo
				matriz(i,j) = aleatorio(0,9)
				suma1 = suma1 + matriz(i,j)
			FinSi
		Fin Para
	Fin Para
	Para i <- 0 Hasta n-1 Hacer
		suma2 = 0
		productomax = ""
		max = 0
		Para j <- 0 Hasta m-2 Hacer
			suma2 = suma2 + matriz(j,i)
			si matriz(j,i) >= max Entonces
				productomax = producto(j)
				max = matriz(j,i)
			FinSi
		Fin Para
		matriz(n-1,i) = suma2
		ventas(i) = productomax
	Fin Para
	Para i <- 0 Hasta 5 Hacer
		Escribir "         ", dias(i) Sin Saltar
	Fin Para
	Escribir " "
	Para i <- 0 Hasta n-1 Hacer
		Escribir producto(i), "         " Sin Saltar
		Para j <- 0 Hasta n-1 Hacer
			Escribir matriz(i,j), "               " Sin Saltar
		Fin Para
		Escribir " "
	Fin Para
	Escribir "mas vendido" Sin Saltar
	Para i <- 0 Hasta n-1 Hacer
		Escribir "              ", ventas(i) Sin Saltar
	Fin Para
	Escribir ""
FinAlgoritmo
//faltaria que se vea mejor...

///Ej extra guia 4 16

Algoritmo sin_titulo
	Definir mat,i,j,ventzona,zon,ventxvend,globalventas Como Entero
	Definir nom,zona como cadena
	Dimension nom(4)
	Dimension zona(5)
	Dimension mat(5,6)
	globalventas=0
	zona(0)="N"
	zona(1)="S"
	zona(2)="E"
	zona(3)="O"
	zona(4)="CE"
	para i<-0 Hasta 3 Hacer
		Escribir "Ingrese el nombre del representante nº " i+1
		leer nom(i)
	FinPara
	para i<-0 Hasta 3 Hacer
		para j<-0 Hasta 4 Hacer
			Escribir "Ingrese el monto total vendido del representante " nom(i) " en Zona " zona(j)
			leer mat(i,j)
		FinPara
	FinPara
	para i<-0 Hasta 4 Hacer
		ventzona=0
		para j<-0 Hasta 3 Hacer
			ventzona=ventzona+mat(j,i)
		FinPara
		mat(j,i)=ventzona  //esto da el total de venta por zona
	FinPara
	Escribir "Ingrese una zona para saber el monto vendido: "
	Escribir "1- Zona norte."
	Escribir "2- Zona sur."
	Escribir "3- Zona este."
	Escribir "4- Zona oeste."
	Escribir "5- Zona centro."
	leer zon
	Mientras zon<1 o zon>5 Hacer
		Escribir "Error. Ingrese un numero entre las opciones: "
		leer zon
	FinMientras
	Escribir "El total de la venta en la zona " zona(zon-1) " es: " mat(4,zon)
	Escribir "Ingrese un vendedor para saber el monto vendido: "
	Escribir "1- " nom(0)
	Escribir "2- " nom(1)
	Escribir "3- " nom(2)
	Escribir "4- " nom(3)
	leer zon
	Mientras zon<1 o zon>4 Hacer
		Escribir "Error. Ingrese un numero entre las opciones: "
		leer zon
	FinMientras
	para i<-zon-1 Hasta 3 Hacer
		para j<-0 Hasta 4 Hacer
			si i=zon-1 Entonces
				Escribir "La cantidad de ventas en la zona " zona(zon-1) " del vendedor " nom(zon-1) " es " mat(i,j)
			FinSi
		FinPara
	FinPara
	para i<-0 Hasta 4 Hacer
		ventxvend=0
		para j<-0 Hasta 4 Hacer
			ventxvend=ventxvend+mat(i,j)
		FinPara
		mat(i,j)=ventxvend  //esto da el total de ventas del vendedor
	FinPara
	Escribir "El total de las ventas del vendedor " nom(zon-1) " es: " mat(zon-1,5)
	para i<-0 Hasta 3 Hacer
		para j<-0 Hasta 4 Hacer
			globalventas=mat(i,j)+globalventas
		FinPara
	FinPara
	Escribir "El total de las ventas de todos los vendedores es de: $" globalventas
FinAlgoritmo