Algoritmo menucomision
	Definir salfijo, totalventas, totalventas1, porccom, horas, hsprecio, comxvta, hsextr Como real
	Definir opc Como Caracter
	Escribir "Elija un monto a calcular: " 
	Escribir "A- comision."
	Escribir "B- Salario fijo + Comision."
	Escribir "C- Salario fijo."
	
	leer opc
	
	opc=Mayusculas(opc)
	si opc = "A" Entonces
		Escribir "Digite el valor del total de las ventas: "
		leer totalventas
		porccom= totalventas * 0.4
		Escribir "La comision correspondiente al empleado es de: $" porccom
	SiNo
		si opc = "B" Entonces
			Escribir "Digite el monto que se paga por hora: "
			leer hsprecio
			Escribir "Ingrese la cantidad de hs trabajadas en la semana: "
			leer horas
			si horas > 40 Entonces
				horas <- 40
				Escribir "El maximo de horas semanales es de 40, y se tendran en cuenta solo esas hs."
			FinSi
			Escribir "Ingrese el monto total de las ventas: "
			leer totalventas1
			comxvta= totalventas1*0.25
			Escribir "La comision por ventas es de: $" comxvta
		SiNo
			si opc = "C" Entonces
				Escribir "Digite el monto que se paga por hora: "
				leer hsprecio
				Escribir "Ingrese la cantidad de hs trabajadas en la semana: "
				leer horas
				si horas > 40 Entonces
					hsextr<- (horas-40)
					hsprecio <- (hsprecio*0.5)+hsprecio
					Escribir "El salario fijo sumando las hs extra es de: " hsextr*hsprecio
				SiNo
					Escribir "El salario fijo es sin hs extra es de: " hsprecio*horas
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
