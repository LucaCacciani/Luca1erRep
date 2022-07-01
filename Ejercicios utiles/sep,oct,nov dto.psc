Algoritmo ej2extr
	definir a,nov,oct,sep Como cadena
	Definir b Como Entero
	Escribir "escriba el mes en que realizo la compra: "
	leer a
	Escribir "digite el monto de la compra: "
	leer b
	
	si a= "noviembre" o a= "octubre" o a= "septiembre" Entonces
		Escribir "El total a abonar es de: $" b-(b*0.1)
	SiNo
		Escribir "no se aplica el dto, el total a abonar es de: $" b
	FinSi
	
	
FinAlgoritmo




