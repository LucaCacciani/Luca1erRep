Algoritmo Subcaden
	definir a,b,c, subcad_1ra, subcad_ult como cadena
	definir d Como Entero
	Escribir "digite una palabra: "
	leer a
	d = Longitud(a)
	Escribir d
	subcad_1ra = Subcadena(a,0,0)
	Escribir subcad_1ra
	subcad_ult = subcadena(a, d-1,d-1)
	Escribir subcad_ult
	
	si Subcadena(a,0,0) = Subcadena(a,d-1,d-1) Entonces
		Escribir "correcto"
	SiNo
		Escribir "incorrecto"
	FinSi
	
	
FinAlgoritmo
