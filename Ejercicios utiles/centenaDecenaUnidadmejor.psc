Algoritmo centenaDecenaUnidad
	definir num, centena, decena, unidad Como Entero	
	definir sn Como cadena
	
	Repetir
		Escribir "Digite un numero de 3 digitos. Presione 0 para salir: "
		leer num
		si num <> 0
			Mientras num<100 o num>999
				Escribir "valor no valido, ingrese un numero de 3 cifras: "
				leer num
			FinMientras
			unidad=num mod 10
			num=trunc(num/10)
			Escribir "la cantidad de unidad es de: " unidad
			decena=num mod 10
			num=trunc(num/10)
			Escribir  "la cantidad de decenas es de: " decena
			centena=num mod 10
			Escribir "la cantidad de centenas es de: " centena
			Mostrar "Desea ingrsar otro nùmero? Presione S para Si y N para No"
			leer sn
			Mientras sn <> "s" y sn <> "n" Hacer
				Escribir "Error. ingrese una opciòn correcta"
				Leer sn
			FinMientras
			Si sn = "s"
				num = 1
			sino 
				num = 0
			FinSi
		FinSi
	Hasta Que num = 0
	Escribir "Muchas gracias por hacer uso de este programa."
	
	
FinAlgoritmo
	