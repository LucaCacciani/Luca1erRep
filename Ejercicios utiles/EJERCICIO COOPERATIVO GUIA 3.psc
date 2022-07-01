funcion menu(n)
	Segun n Hacer
		1: 
			calcularmuro
		2:
			calcularviga
		3:
			calcularcolumna
		4:
			calcularcontrapiso
		5:
			calculartecho
		6:
			calcularpisos
		7:
			calcularpintura
		8:
			calculariluminacion
		9:
			salir
	FinSegun
FinFuncion

funcion calcularmuro
	Definir esp,largo,alto,metcuad,cem,arena,ladr Como Real
	Escribir "Usted selecciono calcular muro."
	Escribir "Ingrese si el muro va a ser de 20cm o 30cm de espesor: "
	leer esp
	Mientras esp<>20 y esp<>30 Hacer
		Escribir "Espesor mal ingresado, por favor ingreselo nuevamente: "
		leer esp
	FinMientras
	Escribir "Ingrese el largo en metros: "
	leer largo
	Escribir "Ingrese el alto en metros: "
	leer alto
	metcuad=superficie(largo,alto)
	Escribir "La superficie del muro es: " metcuad
	si esp=30 Entonces
		cem=metcuad*15.2
		Escribir "La cantidad de cemento que se utilizara es de: " cem "kg."
		arena=metcuad*0.115
		Escribir "La cantidad de arena que se utilizara es de: " arena "m³"
		ladr=metcuad*120
		Escribir "La cantidad de ladrillos a utilizar es: " ladr
	SiNo
		si esp=20 Entonces
			cem=metcuad*10.9
			Escribir "La cantidad de cemento que se utilizara es de: " cem "kg."
			arena=metcuad*0.09
			Escribir "La cantidad de arena que se utilizara es de: " arena "m³"
			ladr=metcuad*90
			Escribir "La cantidad de ladrillos a utilizar es: " ladr
		FinSi
	FinSi
FinFuncion

Funcion calcularviga
	Definir largviga,cem,arena,piedra,hierro8,hierro4 Como Real
	Escribir "Usted selecciono calcular viga."
	Escribir "Ingrese el largo de la viga en metros: "
	leer largviga
	cem=largviga*9
	Escribir "La cantidad de cemento a utilizar es de: " cem "kg."
	arena=largviga*0.02
	Escribir "La cantidad de arena que se utilizara es de: " arena "m³"
	piedra=largviga*0.02
	Escribir "La cantidad de piedra que se utilizara es de: " piedra "m²"
	hierro8=largviga*4
	Escribir "La cantidad de metros de hierro del 8 que se utilizara es de: " hierro8 "mts."
	hierro4=largviga*3
	Escribir "La cantidad de metros de hierro del 8 que se utilizara es de: " hierro4 "mts."
FinFuncion

Funcion calcularcolumna
	Definir largcolum, cem,arena,piedra,hierro10,hierro4 Como Real
	Escribir "Usted selecciono calcular columna."
	Escribir "Ingrese el largo de la columna en metros: "
	leer largcolum
	cem=largcolum*7.5
	Escribir "La cantidad de cemento a utilizar es de: " cem "kg."
	arena=largcolum*0.016
	Escribir "La cantidad de arena que se utilizara es de: " arena "m³"
	piedra=largcolum*0.016
	Escribir "La cantidad de piedra que se utilizara es de: " piedra "m²"
	hierro10=largcolum*6
	Escribir "La cantidad de metros de hierro del 8 que se utilizara es de: " hierro10 "mts."
	hierro4=largcolum*3
	Escribir "La cantidad de metros de hierro del 8 que se utilizara es de: " hierro4 "mts."
FinFuncion

Funcion calcularcontrapiso
	Definir esp,ancho,largo,metcub,cem,arena,piedra Como Real
	Escribir "Usted selecciono calcular contrapisos."
	Escribir "Ingrese el espesor en metros: "
	leer esp
	Escribir "Ingrese el ancho en metros: "
	leer ancho
	Escribir "Ingrese el largo en metros: "
	leer largo
	metcub=volumen(esp,ancho,largo)
	Escribir "El contrapiso tiene " metcub "m³"
	cem=metcub*105
	Escribir "La cantidad de cemento a utilizar es de: " cem "kg."
	arena=metcub*0.45
	Escribir "La cantidad de arena que se utilizara es de: " arena "m³"
	piedra=metcub*0.9
	Escribir "La cantidad de piedra que se utilizara es de: " piedra "m³"
FinFuncion

Funcion calculartecho
	Definir esp,ancho,largo,metcuad,cem,arena,piedra,hierro8,hierro6 Como Real
	Escribir "Usted selecciono calcular techo."
	Escribir "Ingrese el espesor en metros: "
	leer esp
	Escribir "Ingrese el ancho en metros: "
	leer ancho
	Escribir "Ingrese el largo en metros: "
	leer largo
	metcuad=superficie(ancho,largo)
	cem=metcuad*33
	Escribir "La cantidad de cemento a utilizar es de: " cem "kg."
	arena=metcuad*0.072
	Escribir "La cantidad de arena que se utilizara es de: " arena "m³"
	piedra=metcuad*0.072
	Escribir "La cantidad de piedra que se utilizara es de: " piedra "m³"
	hierro8=metcuad*7
	Escribir "La cantidad de metros de hierro del 8 que se utilizara es de: " hierro8 "mts."
	hierro6=metcuad*4
	Escribir "La cantidad de metros de hierro del 4 que se utilizara es de: " hierro6 "mts."
FinFuncion

Funcion calcularpisos
	Definir ancho,largo,metcuad Como Real
	Escribir "Usted selecciono calcular pisos."
	Escribir "Ingrese el ancho en metros: "
	leer ancho
	Escribir "Ingrese el largo en metros: "
	leer largo
	metcuad=superficie(ancho,largo)+(10%superficie(ancho,largo))
	Escribir "La cantidad de panio de piso a colocar es de " metcuad "m²"
FinFuncion

Funcion calcularpintura
	Definir largo,alto,metcuad,pintura Como Real
	Escribir "Usted selecciono calcular pintura."
	Escribir "Ingrese el largo del muro en metros: "
	leer largo
	Escribir "Ingrese el alto del muro en metros: "
	leer alto
	metcuad=superficie(largo,alto)
	pintura=metcuad*6
	Escribir "La cantidad de pintura a utilizar es de: " pintura "Lts."
FinFuncion

Funcion calculariluminacion
	Definir largo,alto,metcuad Como Real
	Escribir "Usted selecciono calcular iluminacion."
	Escribir "Ingrese el largo de la habitacion en metros: "
	leer largo
	Escribir "Ingrese el alto de la habitacion en metros: "
	leer alto
	metcuad=superficie(largo,alto)*0.20
	Escribir "La cantidad mínima de superficie de iluminación natural (ventanas y puertas de vidrio), es de: " metcuad "Mts."
FinFuncion

Funcion salir
	definir sn Como Caracter
	definir a Como Entero
	Escribir "¿Esta seguro que desea salir? si/no."
	leer sn
	Mientras sn<>"si" y sn<>"SI" y sn<>"no" y sn<>"NO" Hacer
		Escribir "Error. Ingrese una opcion valida:"
		leer sn
	FinMientras
	si sn="no" o sn="NO" Entonces
		Escribir "Ingrese un numero para entrar al menu: "
		Escribir "1 - Calcular muro de ladrillo"
		Escribir "2 - Calcular viga de hormigón"
		Escribir "3 - Calcular columnas de hormigón"
		Escribir "4 - Calcular contrapisos"
		Escribir "5 - Calcular techo"
		Escribir "6 - Calcular pisos"
		Escribir "7 - Calcular pintura"
		Escribir "8 - Calcular iluminación"
		Escribir "9 - Salir"
		leer a
		menu(a)
	SiNo
		Escribir "Gracias por utilizar este programa, vuelva pronto."
	FinSi
FinFuncion

funcion retvol<-volumen(alt,lar,ancho)
	Definir retvol Como real
	retvol=alt*lar*ancho
FinFuncion

funcion retsup<-superficie(lar,alt)
	Definir retsup Como real
	retsup=lar*alt
FinFuncion

Algoritmo sin_titulo
	Definir num Como Entero
	Escribir "Ingrese un numero para entrar al menu: "
	Escribir "1 - Calcular muro de ladrillo"
	Escribir "2 - Calcular viga de hormigón"
	Escribir "3 - Calcular columnas de hormigón"
	Escribir "4 - Calcular contrapisos"
	Escribir "5 - Calcular techo"
	Escribir "6 - Calcular pisos"
	Escribir "7 - Calcular pintura"
	Escribir "8 - Calcular iluminación"
	Escribir "9 - Salir"
	leer num
	menu(num)
FinAlgoritmo
