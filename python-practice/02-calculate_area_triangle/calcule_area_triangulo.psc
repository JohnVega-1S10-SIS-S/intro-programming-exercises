Algoritmo calcule_area_triangulo 
	Definir ladoA, ladoB, ladoC Como Cadena
	Definir i Como Entero
	Definir a, b, c, s, p, area, valorInterno Como Real
	Definir ladoAEsValido, ladoBEsValido, ladoCEsValido Como Logico
	
	Escribir "Escriba el lado A del triangula: "
	Leer ladoA
	
	Escribir "Escriba el lado B del triangulo: "
	Leer ladoB
	
	Escribir "Escriba el lado C del triangulo: "
	Leer ladoC
	
	ladoAEsValido<-Verdadero
	ladoBEsValido<-Verdadero
	ladoCEsValido<-Verdadero
	
	// Verificar si el valor ingresado es un numero.
	Para i <- 1 Hasta Longitud(ladoA) Hacer
        Si Subcadena(ladoA, i, i) < "0" O Subcadena(ladoA, i, i) > "9" Entonces
            ladoAEsValido <- Falso
        FinSi
    FinPara
	
	Para i <- 1 Hasta Longitud(ladoB) Hacer
        Si Subcadena(ladoB, i, i) < "0" O Subcadena(ladoB, i, i) > "9" Entonces
            ladoBEsValido <- Falso
        FinSi
    FinPara
	
	Para i <- 1 Hasta Longitud(ladoC) Hacer
        Si Subcadena(ladoC, i, i) < "0" O Subcadena(ladoC, i, i) > "9" Entonces
            ladoCEsValido <- Falso
        FinSi
    FinPara
	
	Si ladoAEsValido Y ladoBEsValido Y ladoCEsValido Entonces
		a<-ConvertirANumero(ladoA)
		b<-ConvertirANumero(ladoB)
		c<-ConvertirANumero(ladoC)
		
		//Validar si el triangulo existe. Si a + b > c Y a + c > b Y b + c > a Entonces
		Si a + b > c Y a + c > b Y b + c > a Entonces
			Escribir "El triangulo existe."
			
			//Encontrar el perimetro.
			p<- a+b+c
			
			//Encontrar el semiperimetro.
			s<- p/2
			
			//Encontrar el area.
			valorInterno<-s * (s - a) * (s - b) * (s - c)
			
			//Encontrar la riaz cuadrada.
			area <- RC(valorInterno)
			
			Escribir "Lado A de su triangulo es: ", a
			Escribir "Lado B de su triangulo es: ", b
			Escribir "Lado C de su triangulo es: ", c
			Escribir "Perimetro del triangulo es: ", p
			Escribir "Semiperimetro del triangulo es: ", s
			Escribir "Valor interno: ", valorInterno
			Escribir "El area del triangulo es: ", area
		SiNo
			Escribir "No es un triángulo válido"
		Fin Si
	SiNo
		Escribir "Porfavor ingrese un numero valido"
	Fin Si
	
FinAlgoritmo
