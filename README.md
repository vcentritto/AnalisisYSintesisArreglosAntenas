# Análisis y Síntesis de Arreglos de Antenas
Este código en MATLAB permite realizar el análisis y síntesis de arreglos de antenas lineales de *N elementos* y de arreglos en el plano de *NxN elementos*. Los elementos radiantes de estos arreglos son considerados **isotrópicos** o con un **diagrama de radiación conocido**. <br>


[![Principal.png](https://i.postimg.cc/g0dv0MhM/Principal.png)](https://postimg.cc/k21V1vf8)
<p align="center">
 Módulo Principal del Programa
</p> 

## Análisis de arreglos de antenas
Este código permite generar y estudiar diagramas de radiación de arreglos lineales y en el plano, conociendo del arreglo: *el número de elementos*, *la distancia inter-elemento*, *la amplitud de cada elemento*, el *el desfasaje progresivo entre elementos* y la *distribución geometríca de los elementos*.

Además, con este código se calculan las **características más importantes de un diagrama de radiación** de forma numérica y gráfica. Algunas de esas características son las siguientes: 
- Posición del lóbulo principal.
- Posiciones de los lóbulos secundarios.
- Posiciones de los nulos en el diagrama de radiación.
- Nivel relativo de los lóbulos laterales (NRLL).
- Ancho del haz principal y ancho del haz a - 3 dB.
- Directividad máxima.

A continuación, se muestran *diagramas de radiación con sus respectivas características principales* representadas gráficamente. Estos diagramas los puedes obtener **mediante este programa**.

[![Lineal-cartesianas-escala-lineal.png](https://i.postimg.cc/Wb8Dn2q7/Lineal-cartesianas-escala-lineal.png)](https://postimg.cc/JGy47Cqy)
<p align="center">
 Diagrama de radiación producto de un arreglo lineal de 4 elementos, distancia inter-elemento de 0.5λ y desfasaje entre elementos de 30°.
</p> <br>

[![Plano-cartesianas-escla-lineal.png](https://i.postimg.cc/k4jJS5pV/Plano-cartesianas-escla-lineal.png)](https://postimg.cc/wymY89HH)
<p align="center">
 Diagrama de radiación producto de un arreglo en el plano xy de 8 elementos (Nx = Ny), distancia inter-elemento de 0.5λ (dx = dy) y desfasaje entre elementos de 65° en dirección x y 75* en dirección y.
</p> <br>

## Síntesis de arreglos de antenas
Este código permite encontrar la **amplitud-fase** de cada elemento de un arreglo lineal o en el plano, con el objetivo de generar un diagrama de radiación que cumple con **características específicas**. Del arreglo, se conoce: el *número de elementos*, la *distancia inter-elemento* y la *distribución geometríca de los elementos*. <br>         
Se pueden encontrar distintos **métodos de síntesis** para arreglos lineales o en el plano. <br>

[![M-dulo-S-ntesis-Lineal.png](https://i.postimg.cc/T1bTsv9Q/M-dulo-S-ntesis-Lineal.png)](https://postimg.cc/7JxvCcjT)
<p align="center">
 Métodos de Síntesis para arreglos lineales.
</p> <br>

[![M-dulo-S-ntesis-Plano.png](https://i.postimg.cc/jqfKtKH4/M-dulo-S-ntesis-Plano.png)](https://postimg.cc/qgpWxPZN)
<p align="center">
 Métodos de Síntesis para arreglos en el plano.
</p> <br>

### Método de variación de la fase entre elementos para arreglos lineales y en el plano
Este método permite **ubicar al lóbulo principal** en cualquier posición del diagrama de radiación. Este código permite encontrar el *desfasaje entre elementos del arreglo* y el diagrama de radiación generado a partir de dicho resultado.

[![Lineal-polares.png](https://i.postimg.cc/MTfpRQhn/Lineal-polares.png)](https://postimg.cc/k69CPBMC)
<p align="center">
 Diagrama de radiación cuyo lóbulo principal está en θ₀ = 45°, mediante un desfasaje entre elementos de -127.28°. <br>
 Producto de un arreglo lineal de 16 elementos y distancia inter-elemento de 0.5λ.
</p> <br>

[![Plano-esf-ricas-logar-tmica.png](https://i.postimg.cc/Pq2SZLmn/Plano-esf-ricas-logar-tmica.png)](https://postimg.cc/d7ZRcVH5)
<p align="center">
 Diagrama de radiación cuyo lóbulo principal está en θ₀ = 45° y ϕ₀ = 45°, mediante un desfasaje entre elementos de -90° en dirección x e y. <br>
 Producto de un arreglo en el plano de 16 elementos (Nx = Ny) y distancia inter-elemento de 0.5λ (dx = dy).
</p> <br>

### Método de Dolph-Chebyshev para arreglos lineales y Método de Dolph-Chebyshev Mejorado para arreglos en el plano
Este método permite generar un **nivel relativo de lóbulos laterales específico** en el diagrama de radiación. Además, permite **ubicar al lóbulo principal** en cualquier posición de dicho diagrama. <br>

- *Método de Dolph-Chebyshev*: Aplica para arreglos lineales. Este código permite encontrar la *amplitud-fase de cada elemento del arreglo lineal* y el diagrama de radiación que cumple con el NRLL solicitado. <br>



- *Método de Dolph-Chebyshev Mejorado*: Es una ampliación del método de Dolph-Chebyshev, que se aplica para arreglos en el plano. Este cófigo permite encontrar la *amplitud-fase de cada elemento del arreglo planar*, así como el diagrama de radiación con el NRLL previamente especificado. <br>
*Si quieres conocer más sobre este método*: [Optimum scannable planar arrays with an invariant sidelobe level](https://ieeexplore.ieee.org/document/1448679).

### Método de Dolph-Chebyshev para arreglos lineales y Método de Dolph-Chebyshev Mejorado para arreglos en el plano



## Cómo utiizar

Descarga todos los scripts del repositorio y ubicalos en una misma carpeta.

Luego, abre y ejecuta en MATLAB el script **AnalisisySintesisdeArreglosPrincipal.m**

En el Command Prompt podrás ver el menú inicial del programa.


