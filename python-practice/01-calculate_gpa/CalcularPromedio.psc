Algoritmo CalcularPromedio
	Definir Entrada Como Cadena
	Definir Cantidad, i Como Entero
	Definir Promedio, Nota, Total Como Real
	
	Dimension Nota[10]
	Total<-0
	
	Escribir "Indique la cantidad de notas a calificar, maximo son 10: "
	Leer Entrada
	
	esValido <- Verdadero
	
	// Verificar si el valor ingresado es un numero.
	Para i <- 1 Hasta Longitud(Entrada) Hacer
        Si Subcadena(Entrada, i, i) < "0" O Subcadena(Entrada, i, i) > "9" Entonces
            esValido <- Falso
        FinSi
    FinPara
	
	Si esValido Entonces
		
		Cantidad<-ConvertirANumero(Entrada)
		
		Si Cantidad <= 10 Entonces
			Para i<-1 Hasta Cantidad Hacer
				Escribir "Nota ",i,": "
				Leer Nota[i]
			Fin Para
			
			Para i<-1 Hasta Cantidad Hacer
				Total<-Total + Nota[i]
			Fin Para
			
			Promedio<-Total / Cantidad
			
			//Condition.
			Si Promedio <= 59 Entonces
				Escribir "*************************************************"
				Escribir "Su promedio es de ",Promedio," Usted a Reprobado."
				Escribir "*************************************************"
			Fin Si
			
			Si Promedio >= 60 Y Promedio <= 79 Entonces
				Escribir "*************************************************"
				Escribir "Su promedio es de ",Promedio," Usted a aprobado."
				Escribir "*************************************************"
			Fin Si
			
			Si Promedio >= 80 Entonces
				Escribir "********************************************************"
				Escribir "Su promedio es de ",Promedio," Aprobado con excelencia"
				Escribir "********************************************************"
			Fin Si
		SiNo
			Escribir "El valor maximo es 10 y usted ingreso: ", Cantidad
		Fin Si
	SiNo
		Escribir "Por favor ingrese un valor numerico valido: "
	Fin Si
FinAlgoritmo