SubProceso vergenz(mat,n,n)
	Definir i,j,conta,contb,contc,contd,conta1,contb1,contc1,contd1 Como Entero
	conta=0
	contb=0
	contc=0
	contd=0
	conta1=0
	contb1=0
	contc1=0
	contd1=0
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta n-1 Hacer
			si i=j Entonces
				si mat(i,j)="A" Entonces
					conta=conta+1
				SiNo
					si mat(i,j)="B" Entonces
						contb=contb+1
					SiNo
						si mat(i,j)="C" Entonces
							contc=contc+1
						SiNo
							si mat(i,j)="D" Entonces
								contd=contd+1
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta n-1 Hacer
			si i=j Entonces
				si mat(i,j)="A" Entonces
					conta1=conta1+1
				sino 
					si mat(i,j)="B" Entonces
						contb1=contb1+1
					sino
						si mat(i,j)="C" Entonces
							contc1=contc1+1
						SiNo
							si mat(i,j)="D" Entonces
								contd1=contd1+1
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	si conta=4 o contb=4 o contc=4 o contd=4 o conta=3 o contb=3 o contc=3 o contd=3 o conta=37 o contb=37 o contc=37 o contd=37 Entonces
		si conta1=4 o contb1=4 o contc1=4 o contd1=4 o conta1=3 o contb1=3 o contc1=3 o contd1=3 o conta1=37 o contb1=37 o contc1=37 o contd1=37 Entonces
			Escribir "Contiene Gen Z"
			Imprimirmatriz(mat,n,n)
		FinSi
	SiNo
		Escribir "Lamentablemente, el Gen Z no se encuentra en el organismo."
	FinSi
FinSubProceso
SubProceso Imprimirmatriz(matri,n,n)
	Definir i,j Como Entero
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta n-1 Hacer
			Escribir Sin Saltar matri(i,j) " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso
SubProceso llenarmatriz(matr,n,n,caden)
	Definir i,j,cont como entero
	cont=0
	para i<-0 Hasta n-1 Hacer
		para j<-0 Hasta n-1 Hacer
			matr(i,j)=Subcadena(caden,cont,cont)
			cont=cont+1
		FinPara
	FinPara
FinSubProceso
Algoritmo sin_titulo
	Definir mat,car como cadena
	Definir n Como Entero
	car="CDDACCACCACAAABC"
	n=Longitud(car)
	si n=9 Entonces
		n=3 
	sino 
		si n=16 Entonces
			n=4
		SiNo
			si n=1369 Entonces
				n=37
			FinSi
		FinSi
	FinSi
	Dimension mat(n,n)
	llenarmatriz(mat,n,n,car)
	vergenz(mat,n,n)
FinAlgoritmo