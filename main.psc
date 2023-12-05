Algoritmo main
	
	Definir __nombre_cliente Como Texto
	Definir __monto_compra Como Texto
	Definir __dia_compra Como Texto
	Definir __cantidad_productos Como Texto
	Definir __descuento_acumulado Como Texto
	
	__validado = Falso
	
	Mientras __validado == Falso Hacer
		Escribir "Ingrese el nombre del cliente:"
		Leer __nombre_cliente
		Si __nombre_cliente <> "" Entonces
			__validado = Verdadero
		SiNo
			Escribir "ERROR: No ha ingresado ningún nombre"
		FinSi
	FinMientras
	
	__validado = Falso
	
	Mientras __validado == Falso Hacer
		Escribir "Ingrese el monto total de la compra:"
		Leer __monto_compra
		Si __validar_numero(__monto_compra) == Verdadero Entonces
			__validado = Verdadero
		SiNo
			Escribir "ERROR: Debe ingresar un número válido"
		FinSi
	FinMientras
	
	__validado = Falso

	Escribir "Ingrese el dia que realizo la compra:"
	Leer __dia_compra
	
	Mientras __validado == Falso Hacer
		Escribir "Ingrese la cantidad de productos comprados:"
		Leer __cantidad_productos
		Si __validar_numero(__cantidad_productos) == Verdadero Entonces
			__validado = Verdadero
		SiNo
			Escribir "ERROR: Debe ingresar un número válido"
		FinSi
	FinMientras
	
	Si ConvertirANumero(__monto_compra) >= 200000 Entonces
		__descuento_acumulado = "25"
	FinSi
	
	Si ConvertirANumero(__monto_compra) >= 100000 y ConvertirANumero(__monto_compra) < 200000 Entonces
		__descuento_acumulado = "15"
	FinSi

	Si __dia_compra == "Miercoles" o __dia_compra == "miercoles" Entonces
		__aux_descuento_acumulado = ConvertirANumero(__descuento_acumulado) + 5
		__descuento_acumulado = ConvertirATexto(__aux_descuento_acumulado)
	FinSi
	
	Si ConvertirANumero(__cantidad_productos) >= 10 Entonces
		__aux_descuento_acumulado = ConvertirANumero(__descuento_acumulado) + 10
		__descuento_acumulado = ConvertirATexto(__aux_descuento_acumulado)
	FinSi
		
	Escribir "Cliente: " , __nombre_cliente
	Escribir "Porcentaje de descuento: " , __descuento_acumulado , "%"
	Escribir "Su descuento es de: $" , (ConvertirANumero(__monto_compra) * (ConvertirANumero(__descuento_acumulado) / 100))
	Escribir "El valor con el descuento es: $" , ConvertirANumero(__monto_compra) - (ConvertirANumero(__monto_compra) * (ConvertirANumero(__descuento_acumulado) / 100))
	
FinAlgoritmo

Funcion __validado <- __validar_numero(__numero)
	__validado = Verdadero
	Para i = 1 Hasta Longitud(__numero) Con Paso 1 Hacer
		__v = Subcadena(__numero, i, i)
		Si __v <> "0" y __v <> "1" y __v <> "2" y __v <> "3" y __v <> "4" y __v <> "5" y __v <> "6" y __v <> "7" y __v <> "8" y __v <> "9" Entonces
			__validado = Falso
		FinSi
	FinPara
FinFuncion