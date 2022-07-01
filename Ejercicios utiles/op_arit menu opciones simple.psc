Algoritmo op_arit
	definir a,b Como Caracter
	Definir c, d Como Entero	
	Escribir "digite dos numeros: "
	leer c
	leer d
	Escribir "Desea: S para sumar, R para restar, M para multiplicar o D para dividir"
	leer a
	a=Mayusculas(a)
	Segun a Hacer
		"S": Escribir c+d
		"R": Escribir c-d
		"M": Escribir c*d
		"D": Escribir c/d
	De Otro Modo:
		Escribir "ingrese una opcion valida."
	FinSegun
FinAlgoritmo
