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