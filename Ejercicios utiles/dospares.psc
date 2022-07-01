Algoritmo autousado
	definir a,b,c como real
	Escribir "digite la cantidad de horas de uso del auto: "
	leer a
	si a<=2 Entonces
		Escribir "el total a abonar es de $400 y la nafta no se debe abonar"
	SiNo
		Escribir "usted excedio el limite horario y debera abonar segun su uso, por favor ingrese la cantidad de litros que utilizo: "
		leer b
		Escribir "el total a abonar por litro de nafta gastado es de: $" b*40
		Escribir "ingrese la cantidad de tiempo que se excedio en minutos "
		leer c
		Escribir "la cantidad a abonar por minuto excedido es de: $" c*5.20
		c = c*5.20
		b = b*40
		Escribir "el total a abonar por exceso de uso es de: $"  c+b
	FinSi
	
	
	
FinAlgoritmo
