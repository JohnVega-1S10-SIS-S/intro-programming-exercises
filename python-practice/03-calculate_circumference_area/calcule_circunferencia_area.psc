Algoritmo calcule_circunferencia_area
	Definir entrada Como Cadena
	Definir i, radio Como Entero
	Definir esValido Como Logico
	Definir diametro, circunferencia, area Como Real
	
	Escribir "Escriba el valor del radio R: "
	Leer entrada
	
	esValido <- Verdadero
	
	// Verificar si el valor ingresado es un numero.
	Para i <- 1 Hasta Longitud(entrada) Hacer
        Si Subcadena(entrada, i, i) < "0" O Subcadena(entrada, i, i) > "9" Entonces
            esValido <- Falso
        FinSi
    FinPara
	
	Si esValido Entonces
		radio<-ConvertirANumero(entrada)
		diametro<-radio*2
		
		// Calculando circunferencia.
		circunferencia<-PI*diametro
		
		// Calculando area.
		area<-PI*radio*radio
		
		Escribir "Este es el diametro: ", circunferencia
		Escribir "Este es el área: ", area
	SiNo
		Escribir "Por favor ingrese un valor numerico valido: "
	Fin Si
FinAlgoritmo