Algoritmo alqauto
	definir a,b,c,d,e,f Como real
	Escribir "ingrese la cantidad de hs y luego los minutos que utilizo el auto: "
	leer a
	leer b
	f=b/100
	si (a+f) <= 2 Entonces
		Escribir "la cantidad a abonar es de $400"
	SiNo
		si a+f >= 2 Entonces
			Escribir "usted excedio el limite horario y debera abonar por litro de nafta usado, a continuacion ingrese la cantidad de litros que utilizo: "
			leer c
			Escribir "el total a abonar por litro de nafta utilizado es de: $" c*40
			Escribir "el total a abonar por minuto excedido es de: $" b*5.20
			c=c*40
			b=b*5.20
			Escribir "el total a abonar seria de: $" c+b+400
		FinSi
	FinSi
	
FinAlgoritmo
