Funcion inicializarMatriz(tab, a, b)
	Definir i,j como entero
	para i<-0 Hasta a-1 Hacer
		para j<-0 Hasta b-1 Hacer
			tab(i,j)="*"
		FinPara
	FinPara
FinFuncion
Funcion agregarpalabra(tabler  ,pal,fila)
	Definir i,j,cont,posr como entero
	para i<-fila Hasta fila Hacer
		cont=0
		para j<-0 Hasta 11 Hacer
			tabler(i,j)=Subcadena(pal,cont,cont)
			cont=cont+1
		FinPara
	FinPara
	posr=buscarR(pal,fila)
	
FinFuncion
Funcion imprimirmatriz(table,a,b)
	Definir i,j Como Entero
	para i<-0 Hasta a-1 Hacer
		para j<-0 Hasta b-1 Hacer
			Escribir Sin Saltar table(i,j) " "
		FinPara
		Escribir ""
	FinPara
FinFuncion
Funcion cont<-buscarR(cad,nfila)
	Definir i,j,cont,vec como entero
	para i<-0 Hasta nfila Hacer
		cont=0
		para j<-0 Hasta Longitud(cad) Hacer
			mientras Subcadena(cad,cont,cont) <> "r" Hacer
				cont=cont+1
			FinMientras
		FinPara
	FinPara
	Escribir cont "%"
FinFuncion
Funcion acomodarmatriz(cruci,num1,num2)
	Definir i,j,contacom,cont Como Entero
	Definir vf Como Logico
	vf=Verdadero
	cont=buscarR(cruci,cad,num2)
	para i<-0 Hasta num1-1 Hacer
		contacom=0
		para j<-0 Hasta num2-1 Hacer
			si vf Entonces
				si contacom>= cont Entonces
					Escribir "*"
				SiNo
					contacom=contacom+1
				FinSi
			FinSi
		FinPara
	FinPara
FinFuncion
Algoritmo ejercicioCooperativoGuia4
	Definir tablero como Cadena
	Definir n,m como entero
	n=9
	m=12
	Dimension tablero[n, m]
	inicializarMatriz(tablero,n,m)
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	acomodarmatriz(tablero,n,m)
	imprimirmatriz(tablero,n,m)
FinAlgoritmo