Algoritmo area_de_rectangulo
	Definir opcion, totalRectangulos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir base Como Real
	Definir altura Como Real
	Definir area Como Real
	Definir tipoRectangulo Como Caracter
	Definir unidadMedida Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension base[100]
	Dimension altura[100]
	Dimension area[100]
	Dimension tipoRectangulo[100]
	Dimension unidadMedida[100]
	Dimension estado[100]
	totalRectangulos <- 0
	siguienteID <- 1
	//---------------------------------------//
	//--|menu_principal_area_de_rectangulo|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principal area de rectangulo"
		Escribir "1) registrar rectangulo"
		Escribir "2) editar rectangulo"
		Escribir "3) eliminar rectangulo"
		Escribir "4) buscar rectangulo"
		Escribir "5) listar rectangulos"
		Escribir "6) ver detalles del rectangulo"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//--------------------------//
			//--|registrar_rectangulo|--//
			//--------------------------//
			1:
				Escribir "registrar rectangulo"
				id[totalRectangulos+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalRectangulos+1]
				Escribir "ingrese la base:"
				Leer base[totalRectangulos+1]
				Escribir "ingrese la altura:"
				Leer altura[totalRectangulos+1]
				area[totalRectangulos+1] <- base[totalRectangulos+1] * altura[totalRectangulos+1]
				Si base[totalRectangulos+1] = altura[totalRectangulos+1] Entonces
					tipoRectangulo[totalRectangulos+1] <- "cuadrado"
				SiNo
					tipoRectangulo[totalRectangulos+1] <- "rectangulo"
				FinSi
				Escribir "ingrese la unidad de medida:"
				Leer unidadMedida[totalRectangulos+1]
				Escribir "ingrese el estado:"
				Leer estado[totalRectangulos+1]
				totalRectangulos <- totalRectangulos + 1
				Escribir "rectangulo registrado correctamente."
			//-----------------------//
			//--|editar_rectangulo|--//
			//-----------------------//
			2:
				Escribir "editar rectangulo"
				Si totalRectangulos = 0 Entonces
					Escribir "no hay rectangulos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalRectangulos Hacer
						Escribir id[i], " | ", base[i], " | ", altura[i], " | ", area[i], " | ", tipoRectangulo[i], " | ", unidadMedida[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del rectangulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalRectangulos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva base:"
							Leer base[i]
							Escribir "ingrese la nueva altura:"
							Leer altura[i]
							area[i] <- base[i] * altura[i]
							Si base[i] = altura[i] Entonces
								tipoRectangulo[i] <- "cuadrado"
							SiNo
								tipoRectangulo[i] <- "rectangulo"
							FinSi
							Escribir "ingrese la nueva unidad de medida:"
							Leer unidadMedida[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "rectangulo editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un rectangulo con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|eliminar_rectangulo|--//
			//-------------------------//
			3:
				Escribir "eliminar rectangulo"
				Si totalRectangulos = 0 Entonces
					Escribir "no hay rectangulos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalRectangulos Hacer
						Escribir id[i], " | ", base[i], " | ", altura[i], " | ", area[i], " | ", tipoRectangulo[i], " | ", unidadMedida[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del rectangulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalRectangulos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalRectangulos Entonces
								Para j <- i Hasta totalRectangulos - 1 Hacer
									id[j] <- id[j+1]
									base[j] <- base[j+1]
									altura[j] <- altura[j+1]
									area[j] <- area[j+1]
									tipoRectangulo[j] <- tipoRectangulo[j+1]
									unidadMedida[j] <- unidadMedida[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalRectangulos <- totalRectangulos - 1
							Escribir "rectangulo eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un rectangulo con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|buscar_rectangulo|--//
			//-----------------------//
			4:
				Escribir "buscar rectangulo"
				Si totalRectangulos = 0 Entonces
					Escribir "no hay rectangulos registrados."
				SiNo
					Escribir "ingrese el id del rectangulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalRectangulos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", base[i], " | ", altura[i], " | ", area[i], " | ", tipoRectangulo[i], " | ", unidadMedida[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un rectangulo con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|listar_rectangulos|--//
			//------------------------//
			5:
				Escribir "listar rectangulos"
				Si totalRectangulos = 0 Entonces
					Escribir "no hay rectangulos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalRectangulos Hacer
						Escribir id[i], " | ", base[i], " | ", altura[i], " | ", area[i], " | ", tipoRectangulo[i], " | ", unidadMedida[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_rectangulo|--//
			//-----------------------------//
			6:
				Escribir "ver detalles del rectangulo"
				Si totalRectangulos = 0 Entonces
					Escribir "no hay rectangulos registrados."
				SiNo
					Escribir "ingrese el id del rectangulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalRectangulos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del rectangulo"
							Escribir "id: ", id[i]
							Escribir "base: ", base[i]
							Escribir "altura: ", altura[i]
							Escribir "area: ", area[i]
							Escribir "tipo de rectangulo: ", tipoRectangulo[i]
							Escribir "unidad de medida: ", unidadMedida[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un rectangulo con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalRectangulos = 0 Entonces
					Escribir "no hay rectangulos registrados."
				SiNo
					sumaAreas <- 0
					sumaBases <- 0
					sumaAlturas <- 0
					mayorArea <- area[1]
					menorArea <- area[1]
					mayorBase <- base[1]
					menorBase <- base[1]
					mayorAltura <- altura[1]
					menorAltura <- altura[1]
					Para i <- 1 Hasta totalRectangulos Hacer
						sumaAreas <- sumaAreas + area[i]
						sumaBases <- sumaBases + base[i]
						sumaAlturas <- sumaAlturas + altura[i]
						Si area[i] > mayorArea Entonces
							mayorArea <- area[i]
						FinSi
						Si area[i] < menorArea Entonces
							menorArea <- area[i]
						FinSi
						Si base[i] > mayorBase Entonces
							mayorBase <- base[i]
						FinSi
						Si base[i] < menorBase Entonces
							menorBase <- base[i]
						FinSi
						Si altura[i] > mayorAltura Entonces
							mayorAltura <- altura[i]
						FinSi
						Si altura[i] < menorAltura Entonces
							menorAltura <- altura[i]
						FinSi
					FinPara
					promedioAreas <- sumaAreas / totalRectangulos
					promedioBases <- sumaBases / totalRectangulos
					promedioAlturas <- sumaAlturas / totalRectangulos
					Escribir "estadistica general"
					Escribir "total de rectangulos: ", totalRectangulos
					Escribir "suma de areas: ", sumaAreas
					Escribir "promedio de areas: ", promedioAreas
					Escribir "area mayor: ", mayorArea
					Escribir "area menor: ", menorArea
					Escribir "suma de bases: ", sumaBases
					Escribir "promedio de bases: ", promedioBases
					Escribir "base mayor: ", mayorBase
					Escribir "base menor: ", menorBase
					Escribir "suma de alturas: ", sumaAlturas
					Escribir "promedio de alturas: ", promedioAlturas
					Escribir "altura mayor: ", mayorAltura
					Escribir "altura menor: ", menorAltura
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar area de rectangulo."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo