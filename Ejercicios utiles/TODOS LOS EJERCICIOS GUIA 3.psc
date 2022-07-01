///EJERCICIO COOPERAR pag 4 y 6

Algoritmo sin_titulo
	Definir c1,c2 como cadena
	c1="cooperando"
	c2="trabajamos mejor"
	Escribir Coop(c1,c2)
FinAlgoritmo
Funcion agua <- Coop(a,b)
	Definir agua Como Caracter
	agua =Concatenar(a+ " ",b)
FinFuncion
//correccion de sintaxis
Funcion retorno <- Paridad ( num)
retorno = num MOD 2 == 0
Fin Funcion

//deteccion errores 2
Funcion retorno <- Comparar ( num1 ,num2)
	Definir retorno Como Logico
	retorno = num1> num2
FinFuncion

Algoritmo Prueba
	Definir num1, num2 Como Entero
	Definir resultado Como Logico
	num1 = 3
	num2 = 6
	resultado = Comparar(num1,num2)
	Escribir "El num1 es mayor a num2, esta afirmación es: " resultado
FinAlgoritmo

///Ej guia 3 1

Funcion sumado<-suma(a,b)
	Definir sumado Como Entero
	sumado=a+b
FinFuncion
Algoritmo sin_titulo
	Definir n1,n2 Como Entero
	n1=2
	n2=3
	Escribir "la suma de los numeros es: " suma(n1,n2)
FinAlgoritmo


///Ej guia 3 2

Funcion retorno<-pimp(num)
	Definir retorno Como Logico
	si num mod 2 = 0 Entonces
		retorno=Verdadero
	SiNo
		retorno=Falso
	FinSi
FinFuncion
Algoritmo parimp
	Definir num Como Entero
	leer num
	si pimp(num)
		Escribir "El numero es par."
	SiNo
		Escribir "el numero es impar."
	FinSi
FinAlgoritmo

///Ej guia 3 3

Funcion resultado <- multiplo ( a,b )
	Definir resultado Como Logico
	si a mod b =0 Entonces
		resultado=Verdadero
	SiNo
		resultado=Falso
	FinSi
Fin Funcion
Algoritmo esmultiplo
	Definir num,num1 Como Entero
	Escribir "ingrese un numero: "
	leer num
	Escribir "ingrese otro numero y se mostrara si es multiplo: "
	leer num1
	Escribir multiplo(num,num1)
FinAlgoritmo

///Ej guia 3 4

Funcion retorno<-veces(a,b)
	Definir retorno Como caracter
	Definir cont,i Como Entero
	cont=0
	para i<-0 hasta Longitud(a) Con Paso 1 Hacer
		retorno=Subcadena(a,i,i)
		si retorno=b Entonces
			cont=cont+1
		FinSi
	FinPara
	Escribir Sin Saltar cont
FinFuncion
Algoritmo ej4
	Definir frase, letra Como Caracter
	
	Escribir "ingrese una frase: "
	leer frase
	Escribir "ingrese una letra a buscar en la frase: "
	leer letra
	Escribir Sin Saltar "La cantidad de veces que se encontro la : " letra " en la frase : " frase " fueron: " veces(frase,letra) " veces."
	Escribir ""
FinAlgoritmo

///Ej guia 3 5

Funcion primo<-esprimo(a)
	Definir primo Como Caracter
	Definir i,cont1,cont2 Como Entero
	cont1=0
	cont2=0
	para i<-1 Hasta a Con Paso 1 Hacer
		si a mod i = 0 y a mod a=0 Entonces
			cont1=cont1+1
		SiNo
			cont2=cont2+1
		FinSi
		si cont1>cont2 Entonces
			primo="El numero ingresado es primo."
		SiNo
			primo="El numero ingresado no es primo."
		FinSi
	FinPara
FinFuncion

Algoritmo sonprimos
	Definir num Como Entero
	Escribir "Ingrese un numero y se le dira si es primo o no: "
	leer num
	Escribir esprimo(num)
FinAlgoritmo
///Ej guia 3 6   

SubProceso cambio(b por referencia)
	b=10
FinSubProceso

Algoritmo interc
	Definir a Como Entero
	a=5
	cambio(a)
	Escribir a
FinAlgoritmo


///Ej guia 3 7  

SubProceso tempmedia(a)
	Definir max,min,media,i Como Real
	para i<-1 Hasta a Con Paso 1 Hacer
		Escribir "Ingrese la temperatura minima: "
		leer min
		Escribir "Ingrese la temperatura maxima: "
		leer max
		media=(max+min)/2
		Escribir "La temperatura media del dia " i " es de " media "º"
	FinPara
FinSubProceso

Algoritmo dias
	Definir num Como Entero
	Escribir "Ingrese la cantidad de dias que desea saber la temperatura media: "
	leer num
	tempmedia(num)
FinAlgoritmo
	

///Ej guia 3 8

SubProceso resultado(a,b,c)
	si a >=b Entonces
		a=a-b
		c=c+1
		resultado(a,b,c)
	SiNo
		Escribir "El resultado de la resta es " a " y el cociente es " c
	FinSi
FinSubProceso

Algoritmo sin_titulo
	Definir dividendo,divisor,cont Como Real
	cont=0
	Escribir "Ingrese el dividendo: "
	leer dividendo
	Escribir "Ingrese el divisor: "
	leer divisor
	resultado(dividendo,divisor,cont)
FinAlgoritmo

///Ej guia 3 9

Funcion codigo(a)
	Definir cant,i Como Entero
	definir var,final,last Como Caracter
	cant=Longitud(a)
	last=""
	para i<-0 hasta cant Hacer
		var=Subcadena(a,i,i)
		si var<>"." Entonces
			si var="a" o var="e" o var="i" o var="o" o var="u" Entonces
				Segun var Hacer
					"a":
						final="@"
						last=Concatenar(last,final)
					"e":
						final="#"
						last=Concatenar(last,final)
					"i":
						final="$"
						last=Concatenar(last,final)
					"o":
						final="%"
						last=Concatenar(last,final)
					"u":
						final="*"
						last=Concatenar(last,final)
				FinSegun
			SiNo
				final=var
				last=Concatenar(last,final)
			FinSi
		SiNo
			si var='.' Entonces
				i=cant
			FinSi
		FinSi
	FinPara
	Escribir last
FinFuncion

Algoritmo cambiocaracter
	Definir frase Como Caracter
	Escribir "Ingrese una frase terminada en un punto y luego se le reemplazaran las vocales: "
	leer frase
	codigo(frase)
FinAlgoritmo

///Ej guia 3 10

Funcion sumaenteros<- suma ( a )
	Definir sumaenteros,ent como entero
	si a=1 Entonces
		sumaenteros=1
		Escribir "Ahora falta sumar los n siguientes hasta llegar al num digitado: "
	SiNo
		Escribir "Para saber la suma de los enteros anteriores a " a " debo saber la suma de todos los anteriores a " (a-1)
		ent= suma(a-1)
		sumaenteros=a+ent
		Escribir "Finaliza el calculo de " a " el resultado es " sumaenteros
	FinSi
Fin Funcion

Algoritmo sin_titulo
	definir num,res Como Entero
	Escribir "Digite un numero y se mostrara la suma de los N primeros numeros enteros: "
	leer num
	res = suma(num)
	Escribir "La suma de los enteros anteriores a " num " es: " res
FinAlgoritmo

///Ej extra guia 3 1

Funcion sumadiv<-divisores(a)
	Definir i,sumadiv como real
	sumadiv=0
	para i<-1 Hasta a con paso 1 Hacer
		si a mod i = 0 y i <> a Entonces
			sumadiv=sumadiv+i
		SiNo
			si i = a Entonces
				Escribir "El mismo numero no debe ser tenido en cuenta, por lo tanto no se sumara."
			SiNo
				Escribir "El numero " i " no es divisor por lo tanto no se sumara."
			FinSi
		FinSi
	FinPara
FinFuncion

Algoritmo sin_titulo
	definir num,res Como Real
	Escribir "Ingrese un numero y se mostrara la suma de sus divisores: "
	leer num
	res=divisores(num)
	Escribir "La suma de todos los divisores de " num " es: " res
FinAlgoritmo

///Ej extra guia 3 2

Funcion pegado<-conc(a)
	Definir i,j,tamano como entero
	Definir pegado Como Caracter
	tamano=Longitud(a)
	para i <-0 Hasta tamano con paso 1 Hacer
		pegado=Subcadena(a,i,i)
		si pegado<> " " Entonces
			Escribir Sin Saltar pegado
		FinSi
	FinPara
FinFuncion

Algoritmo sin_titulo
	definir num,ent Como Caracter
	Escribir "Ingrese un numero en forma de cadena, de hasta 3 digitos, y se mostrara un numero solo entero: "
	leer num 
	si Longitud(num) >11 Entonces
		Repetir
			Escribir "Hay uno o mas enteros mayores a 3 digitos, ingrese nuevamente el numero."
			leer num
		Mientras Que Longitud(num) >11
	FinSi
	ent=conc(num)
FinAlgoritmo
//MAL ENTENDIDA LA CONSIGNA, SERIA:

Funcion pegado<-conc(a)
	Definir pegado como entero
	pegado=ConvertirANumero(a)
FinFuncion

Algoritmo sin_titulo
	definir num,ent Como Caracter
	Escribir "Ingrese un numero en forma de cadena, de hasta 3 digitos, y se mostrara un numero solo entero: "
	leer num 
	si Longitud(num) >3 Entonces
		Repetir
			Escribir "Hay uno o mas enteros mayores a 3 digitos, ingrese nuevamente el numero."
			leer num
		Mientras Que Longitud(num) >3
	FinSi
	Escribir conc(num)
FinAlgoritmo

///Ej extra guia 3 3

Funcion falv <-login(co,us,coco)
	Definir fv Como Logico
	Definir cont Como Entero
	fv=1<2
	si us= "Usuario1" y co="asdasd" Entonces
		Escribir "El ingreso se completo correctamente por lo tanto es " fv
	SiNo
		si coco >= 3 Entonces
			Escribir "Se supero el maximo de intentos pòr lo tanto el inicio es " no fv
		FinSi
	FinSi
FinFuncion

Algoritmo sin_titulo
	Definir usuario,contra Como Caracter
	Definir log,contador Como Entero
	contador=0
	Repetir
		Escribir "Ingrese el usuario: "
		leer usuario
		Escribir "Ingrese la contraseña: "
		leer contra
		contador=contador+1
		log=login(usuario,contra,contador)
	Hasta Que contador>=3
FinAlgoritmo

///Ej extra guia 3 4

Funcion totalapagar <- totaldiario(tur,hs,fer)
	Definir totalapagar Como Entero
	totalapagar=0
	si tur="diurno" y fer="no" Entonces
		totalapagar=90*hs
		Escribir "El total a pagar es de: $" totalapagar
	SiNo
		si tur="nocturno" y fer="no" Entonces
			totalapagar=125*hs
			Escribir "El total a pagar es de: $" totalapagar
		SiNo
			si tur="diurno" y fer="si" Entonces
				totalapagar=(90*hs*0.1)+(90*hs)
				Escribir "El total a pagar es de: $" totalapagar
			SiNo
				si tur="nocturno" y fer="si" Entonces
					totalapagar=(125*hs*0.15)+(125*hs)
					Escribir "El total a pagar es de: $" totalapagar
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Algoritmo sin_titulo
	Definir nom,dia,turno,feriado Como Caracter
	Definir horas,calc Como Entero
	Escribir "Ingrese el nombre del empleado: "
	leer nom
	Escribir "Ingrese el dia de la semana: "
	leer dia
	Hacer
		Escribir "Ingrese si el turno es diurno o nocturno: "
		leer turno
	hasta Que turno="diurno" o turno="nocturno"
	Escribir "Ingrese la cantidad de horas trabajadas: "
	leer horas
	Hacer
		Escribir "El dia trabajado, ¿fue feriado?: si/no "
		leer feriado
	hasta Que feriado= "si" o feriado="no"
	calc=totaldiario(turno,horas,feriado)
FinAlgoritmo

///Ej extra guia 3 5

Funcion comp <- sum(n)
	Definir comp,ult,prim como real
	prim=n
	comp=0 
	Mientras prim>0 Hacer
		ult=prim mod 10
		prim = trunc(prim/10)
		comp=comp+ult
		Escribir comp
	FinMientras
Fin Funcion

Algoritmo sin_titulo
	Definir calc,num Como real
	Escribir "Ingrese un numero y se mostrara la suma de los num que lo integran: "
	leer num
	calc=sum(num)
	Escribir "La suma de los numeros comprendidos es: " calc
FinAlgoritmo

///Ej extra guia 3 6

Funcion comp <- sum(n)
	Definir comp,ult,prim,contimp,contpar como real
	prim=n
	comp=0 
	contimp=0
	contpar=0
	Mientras prim>0 Hacer
		ult=prim mod 10
		prim = trunc(prim/10)
		comp=ult
		si comp mod 2 <> 0 Entonces
			contimp=contimp+1
		SiNo
			si comp mod 2 = 0 Entonces
				contpar=contpar+1
			FinSi
		FinSi
	FinMientras
	si contpar>=1 Entonces
		Escribir contpar " numero/s es/son par/es."
	SiNo
		si contimp>=1 Entonces
			Escribir "Todos los numeros comprendidos son impares."
		FinSi
	FinSi
Fin Funcion

Algoritmo sin_titulo
	Definir calc,num Como real
	Escribir "Ingrese un numero y se mostrara si todos los comprendidos son impares: "
	leer num
	calc=sum(num)
FinAlgoritmo

///Ej extra guia 3 7

Funcion fibo(n)
	Definir i,ini,segund,guard Como Entero
	ini<-0
	segund<-1
	para i<-1 Hasta n Hacer
		Escribir "La sucesion fibonacci de " n " es, el nº " i " da " ini
		guard<-ini+segund
		ini<-segund
		segund<-guard
	FinPara
FinFuncion

Algoritmo sin_titulo
	Definir num,res Como Entero
	Escribir "Ingrese un numero y se mostrara la sucesion de Fibonacci: "
	leer num
	fibo(num)
FinAlgoritmo

///Ej extra guia 3 8

funcion retorno<-capi(n)
	Definir cap,comp,ult,prim,comp1,cont Como Entero
	Definir retorno Como Caracter
	prim<-n
	comp=0
	Mientras prim>0 Hacer
		comp=comp + prim mod 10
		comp=comp*10
		prim = trunc(prim/10)
	FinMientras
	comp<-comp/10
	si comp=n Entonces
		Escribir "El numero ingresado es capicua."
	SiNo
		Escribir "El numero ingresado no es capicua."
	FinSi
FinFuncion

Algoritmo sin_titulo
	Definir num Como Real
	Definir ret Como Caracter
	Escribir "Ingrese un numero y se dira si es capicua o no: "
	leer num
	ret=capi(num)
FinAlgoritmo

///Ej extra guia 3 9

Funcion numcomb<-formula(m,n)
	Definir numcomb,i,factm,factn,factmn como real
	factm<-1
	factn<-1
	factmn<-1
	para i<-1 Hasta m Hacer
		factm=factm*i
	FinPara
	para i<-1 Hasta n Hacer
		factn=factn*i
	FinPara
	para i<-1 Hasta m-n Hacer
		factmn=factmn*i
	FinPara
	numcomb=factm/(factn*factmn)
FinFuncion

Algoritmo sin_titulo
	Definir num1, num2,res Como Real
	Escribir "Ingrese un numero: "
	leer num1
	Escribir "Ingrese otro numero: "
	leer num2
	si num2>0 y num2<num1
		res<-formula(num1,num2)
		Escribir "El num de combinaciones es: " res
	FinSi
FinAlgoritmo

///Ej extra guia 3 10

Funcion convertirEspaciado(cad)
	Definir i Como Entero
	Definir sep como cadena
	para i <-0 Hasta Longitud(cad) Hacer
		sep=Subcadena(cad,i,i)
		Escribir Sin Saltar sep " "
	FinPara
FinFuncion

Algoritmo sin_titulo
	Definir palabra como cadena
	Escribir "Ingrese una palabra o frase y se mostrara separada por espacios: "
	leer palabra
	convertirEspaciado(palabra)
FinAlgoritmo

///Ej extra guia 3 11

Funcion mensaje(let)
	si let<="t" y let>="m" Entonces
		Escribir "Usted escribio la letra " let
	FinSi
FinFuncion

Algoritmo sin_titulo
	definir letra Como Caracter
	Escribir "Ingrese una letra y si esta entre la T o la M se mostrara un mensaje: "
	leer letra
	mientras Longitud(letra) >=2 Hacer
		escribir "Usted ingreso dos o mas letras, porfavor ingrese nuevamente una letra: "
		leer letra
	FinMientras
	mensaje(letra)
FinAlgoritmo

///Ej extra guia 3 12

Funcion escalera(al)
	Definir i,j Como Entero
	Para i<-1 Hasta al Hacer
		para j<-1 Hasta i Hacer
			Escribir Sin Saltar j
		FinPara
		Escribir ""
	FinPara
FinFuncion

Algoritmo sin_titulo
	Definir alt Como Entero
	Escribir "Ingrese un numero y se mostrara una escalera de numeros consecutivos: "
	leer alt
	escalera(alt)
FinAlgoritmo


///Ej extra guia 3 13

funcion diaanterior(a,b,c)
	si a=1 Entonces
		si b=2 o b=4 o b=6 o b=9 o b=11 Entonces
			b=b-1
			a=31
		SiNo
			si b=5 o b=7 o b=8 o b=10 o b=12 Entonces
				b=b-1
				a=30
			sino
				si b=3 Entonces
					a=28 
					b=b-1
				FinSi
			FinSi
		FinSi
	SiNo
		si a>=2 y a<=31  Entonces
			a=a-1
		FinSi
	FinSi
	si a=1 y b=1 Entonces
		c=c-1
		b=12
		a=31
	FinSi
	Escribir a "/" b "/" c
FinFuncion

Algoritmo sin_titulo
	definir dia,mes, anio Como Entero
	Escribir "Ingrese un dia: "
	leer dia 
	Mientras dia>=32 o dia<=0 Hacer
		Escribir "Dia no valido, por favor ingrese un dia valido: "
		leer dia
	FinMientras
	Escribir "Ingrese un mes: "
	leer mes
	Mientras mes>=13 o mes<=0 Hacer
		Escribir "Mes no valido, por favor ingrese un mes valido: "
		leer mes
	FinMientras
	Escribir "Ingrese un anio: "
	leer anio
	Mientras anio>=2024 o anio<=0 Hacer
		Escribir "Anio no valido, por favor ingrese un anio valido: "
		leer anio
	FinMientras
	diaanterior(dia,mes,anio)
FinAlgoritmo

///Ej extra guia 3 14

Funcion sacavocal(ca)
	Definir i Como Entero
	Definir union como cadena
	para i<-0 Hasta Longitud(ca) Hacer
		si Subcadena(ca,i,i) = "a" o Subcadena(ca,i,i) = "e" o Subcadena(ca,i,i) = "i"  o Subcadena(ca,i,i) = "o" o Subcadena(ca,i,i) = "u" Entonces
			union=concatenar(Subcadena(ca,i,i),"")
		SiNo
			union=concatenar(Subcadena(ca,i,i),"")
			Escribir Sin Saltar union
		FinSi
	FinPara
	Escribir ""
	Escribir "Asi quedaria la frase sin vocales."
FinFuncion

Algoritmo sin_titulo
	definir cad como cadena
	Escribir "Ingrese una frase o palabra y se removeran todas las vocales: "
	leer cad
	sacavocal(cad)
FinAlgoritmo


///Ej extra guia 3 15

funcion retorno<-suma(n)
	Definir retorno,sum Como Real
	si n = 2 Entonces
		retorno=2
	SiNo
		retorno=n+suma(n-2)
	FinSi
FinFuncion

Algoritmo sin_titulo
	Definir num Como Real
	Escribir "Ingrese un numero par y se mostrara la suma de todos los pares desde el mismo hasta 2: "
	leer num
	Mientras num mod 2 = 1 
		Escribir "Error, el numero es impar, por favor ingrese un numero par: "
		leer num
	FinMientras
	Escribir "La suma de los enteros pares es: " suma(num)
FinAlgoritmo

///Ej extra guia 3 16

Funcion retorno<-frase(ca)
	Definir retorno,c como cadena
	Definir lon Como Entero
	lon=Longitud(ca)
	si ca=Subcadena(ca,0,0) Entonces
		retorno=Subcadena(ca,0,0)
	SiNo
		c=Subcadena(ca,lon-1,lon-1)
		retorno=Concatenar(c,frase(Subcadena(ca,0,lon-2)))
	FinSi
FinFuncion
Algoritmo sin_titulo
	Definir cad como cadena
	Escribir "Ingrese una palabra o una frase y se mostrara al revez: "
	leer cad
	Escribir "La frase inversa quedaria: " 
	Escribir frase(cad)
FinAlgoritmo


///Ej extra guia 3 17

Funcion retorno<-fibo(n)
	Definir retorno Como Real
	si n=1 o n=2 Entonces
		retorno=1
	SiNo
		retorno=fibo(n-1)+fibo(n-2)
	FinSi
FinFuncion

Algoritmo sin_titulo
	Definir num Como Entero
	Escribir "Ingrese un numero y se mostrara la posicion de la sucesion de Fibonacci: "
	leer num
	Escribir fibo(num)
FinAlgoritmo


///Ej extra guia 3 18

Funcion retorno<-mcd(m,n)
	Definir retorno Como Entero
	si m>=n Entonces
		si n=0 Entonces
			retorno=m
		SiNo
			si n<>0 Entonces
				retorno = mcd(n, m mod n)
			FinSi
		FinSi
	FinSi
FinFuncion

Algoritmo sin_titulo
	definir num1, num2 Como Real
	Escribir "Ingrese un numero: "
	leer num1
	Escribir "Ingrese otro numero: "
	leer num2
	Escribir "El maximo comun divisor (MCD) entre " num1 " y " num2 " es " mcd(num1,num2)
FinAlgoritmo






