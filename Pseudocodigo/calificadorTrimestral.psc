Algoritmo calificadorTrimestral
	Definir nombres_estudiantes, observaciones Como Caracter
	Definir cantidad_estudiantes, aprobatoria, aprobados,reprobados,notas_1,notas_2,notas_3 , porcentajeAprobados, porcentajeReprobados, nota_promedio Como Real
	aprobatoria = 6
	aprobados = 0
	reprobados = 0
	Escribir "Ingrese la cantidad de estudiantes: "
	Leer cantidad_estudiantes
	Dimension nombres_estudiantes[cantidad_estudiantes]
	Dimension notas_1[cantidad_estudiantes]
	Dimension notas_2[cantidad_estudiantes]
	Dimension notas_3[cantidad_estudiantes]
	Para i=1 Hasta cantidad_estudiantes Hacer
		Escribir "Ingrese el nombre y apellido del estudiante " i ": "
		Leer nombres_estudiantes[i]
		Escribir "Ingrese la nota #1 de " nombres_estudiantes[i] ": "
		Leer notas_1[i]
		Escribir "Ingrese la nota #2 de " nombres_estudiantes[i] ": "
		Leer notas_2[i]
		Escribir "Ingrese la nota #3 de " nombres_estudiantes[i] ": "
		Leer notas_3[i]
		Escribir "Ingrese una observacion del estudiante: " nombres_estudiantes[i]
		Leer observacion 
	FinPara
	
	Escribir "Estudiantes: " cantidad_estudiantes
	Para i=1 Hasta cantidad_estudiantes Hacer
		Escribir "______________________________________"
		Escribir "Estudiante: " nombres_estudiantes[i]
		Escribir "Nota 1: " notas_1[i]
		Escribir "Nota 2: " notas_2[i]
		Escribir "Nota 3: " notas_3[i]
		
		nota_promedio =(notas_1[i]+notas_2[i]+notas_3[i])/3		
		
		Escribir "Nota promedio: " nota_promedio
		Si nota_promedio >= aprobatoria Entonces
			aprobados = aprobados + 1
		SiNo
			reprobados = reprobados + 1
		FinSi
		Escribir "______________________________________"
		porcentajeAprobados= redon(aprobados*100/cantidad_estudiantes)
		porcentajeReprobados= redon(reprobados*100/cantidad_estudiantes)
	FinPara
	Escribir "Aprobados:  " aprobados " estudiante/s" 
	Escribir "El porcentaje de aprobados es: " porcentajeAprobados "%"
	Escribir "Reprobados:  " reprobados " estudiantes/s "  
	Escribir "El porcentaje de reprobados es: " porcentajeReprobados "%"
	
	
FinAlgoritmo
