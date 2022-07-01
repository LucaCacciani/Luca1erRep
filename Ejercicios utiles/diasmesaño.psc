Algoritmo dias
	Definir dia,mes,ano,bi Como entero
	Escribir "digite una fecha: dd/mm/aaaa: "
	leer dia
	leer mes
	Leer ano
	bi= ano mod 4 
		Segun mes Hacer
			1: 
				Si dia <= 30 y dia >= 1 Entonces
					Escribir dia "de enero del" ano
				SiNo
					Escribir "la cantidad de dias no corresponden al mes seleccionado"
				Fin Si
			2: 	
				si dia <= 29 y dia >= 1 y bi = 0 Entonces
				
					
					escribir dia " de febrero del " ano " (año bisiesto) "
				SiNo
					si dia <= 28 y dia >= 1 Entonces
						
						escribir dia " de febrero del " ano 
					SiNo
						Escribir "la cantidad de dias no corresponden al mes seleccionado"
					FinSi
					
				FinSi
			3: 
				si dia <= 30 y dia >= 1 Entonces
					Escribir dia " de marzo del " ano
				SiNo
					Escribir "la cantidad de dias no corresponden al mes seleccionado"
				FinSi
				
				///etc, con los meses restantes.
		FinSegun
	
	
	
	
FinAlgoritmo



