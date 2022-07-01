Algoritmo we
	definir a, frase como cadena
	Escribir "ingrese una palabra o cadena de 4 digitos:"
	leer a
	si Longitud(a) > 4 Entonces
		frase <- Concatenar(a, "!")
	SiNo
		frase<- Concatenar(a, "?")
	FinSi
	Escribir frase
FinAlgoritmo
