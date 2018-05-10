
Instituto Tecnoloógico de Costa Rica
Ingeniería en Computadores
Análisis Numérico para Ingeniería (ANPI)
EMD
2018

#Instrucciones para ejecución de scripts

Para ejecutar el metodo Rungekuta de cuarto orden ejecute la siguiente instrucción

    > [x, y] = RK4(f, xi, xf, y0, h)

Donde "f" es la funcion, "xi" el punto inicial del intervalo, "xf" el punto final del intervalo, 
"y0" la condicion del sistema en "xi", "h" el tamaño del paso.

Las variables de retorno [x, y] son vectores con la solucion de la ecuación. 
Se puede graficar con la siguiente linea de codigo.

    > plot(x, y)
    
Para realizar una grafica del error en funcion de h, ejecute la siguiente instrucción
    > [h, error] = errorxh(f, xi, xf, y0) 
    
Con la misma nomenclatura para los parametros

Para realizar una comparación entre los metodos ode45, ode23 y RK4
    
    > comparacioc()
