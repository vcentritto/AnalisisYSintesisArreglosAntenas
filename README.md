# Análisis y Síntesis de Arreglos de Antenas
Este código en MATLAB permite realizar el análisis y síntesis de arreglos de antenas lineales de *N elementos* y de arreglos en el plano de *NxN elementos*. Los elementos radiantes de estos arreglos son considerados **isotrópicos** o con un **diagrama de radiación conocido**.

[![Principal.png](https://i.postimg.cc/g0dv0MhM/Principal.png)](https://postimg.cc/k21V1vf8)
<p align="center">
 Módulo Principal del Programa
</p> 

## Análisis de arreglos de antenas
Este código permite generar y estudiar diagramas de radiación de arreglos lineales y en el plano, conociendo del arreglo: **el número de elementos**, **la distancia inter-elemento**, **la amplitud de cada elemento** y el **el desfasaje progresivo entre elementos**.

Además, con este código se calculan las **características más importantes de un diagrama de radiación** de forma numérica y gráfica. Algunas de esas características son las siguientes: 
- Posición del lóbulo principal.
- Posiciones de los lóbulos secundarios.
- Posiciones de los nulos en el diagrama de radiación.
- Ancho del haz principal y ancho del haz a - 3 dB.
- Directividad máxima.

[![Lineal-cartesianas-escala-lineal.png](https://i.postimg.cc/Wb8Dn2q7/Lineal-cartesianas-escala-lineal.png)](https://postimg.cc/JGy47Cqy)
<p align="center">
 Diagrama de radiación producto de un arreglo lineal de 4 elementos, distancia inter-elemento de 0.5λ y desfasaje entre elementos de 30°.
</p>

[![Plano-cartesianas-escla-lineal.png](https://i.postimg.cc/k4jJS5pV/Plano-cartesianas-escla-lineal.png)](https://postimg.cc/wymY89HH)
<p align="center">
 Diagrama de radiación producto de un arreglo en el plano xy de 8 elementos (Nx = Ny), distancia inter-elemento de 0.5λ (dx = dy) y desfasaje entre elementos de 65° en dirección x y 75* en dirección y.
</p>

## Síntesis de arreglos de antenas
Este código permite encontrar la amplitud-fase de cada elemento de un arreglo lineal o en el plano, con el objetivo de generar un diagrama de radiación que cumple con **características específicas**.           Se pueden encontrar distintos **métodos de síntesis** para arreglos lineales o en el plano.
<br> <br>

[![M-dulo-S-ntesis-Lineal.png](https://i.postimg.cc/T1bTsv9Q/M-dulo-S-ntesis-Lineal.png)](https://postimg.cc/7JxvCcjT)
<p align="center">
 Métodos de Síntesis para arreglos lineales.
</p>

[![M-dulo-S-ntesis-Plano.png](https://i.postimg.cc/jqfKtKH4/M-dulo-S-ntesis-Plano.png)](https://postimg.cc/qgpWxPZN)
<p align="center">
 Métodos de Síntesis para arreglos en el plano.
</p>

### Método de variación de la fase entre elementos para arreglos lineales y en el plano


## Cómo utiizar

Descarga todos los scripts del repositorio y ubicalos en una misma carpeta.

Luego, abre y ejecuta en MATLAB el script **AnalisisySintesisdeArreglosPrincipal.m**

En el Command Prompt podrás ver el menú inicial del programa.


