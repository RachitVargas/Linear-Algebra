---
title: "BCD3103 Álgebra lineal y ecuaciones diferenciales - Asignacion 2"
author: "Rachit Vargas"
date: "1/28/2021"
output: html_document
---


### 1.Un turista francés regresó de un viaje por América Latina con divisa extranjera de las siguientes denominaciones: 1500 pesos argentinos, 550 quetzales, 3600 soles, 1200 bolivianos y 13200 colones.

```{r}

# Exprese la cantidad de cada tipo de moneda por medio de un vector fila.
cantidad_moneda = c(1500,500,3600,1200,13200)
cantidad_moneda

# Exprese el valor de cada tipo de moneda en euros por medio de un vector columna.
valor_euros = c(0.0095,0.11,0.23,0.12,0.0013)
t(valor_euros)

# Utilice el producto punto para calcular cuántos euros valía el dinero extranjero del turista.
total_dinero_euros = sum(cantidad_moneda*valor_euros)
total_dinero_euros

```



### 2. Utilizando el lenguaje R, calcular la norma del vector 𝑣 = (−2, 3, 0, 5).

```{r}
v = c(-2,3,0,5)
norma_v = sqrt(sum(v*v))
norma_v

```

### 3. Crear las dos matrices siguientes por medio de R:

```{r}
matriz_a = matrix(c(2,4,62,4,5,6,3,1,-2), ncol = 3, byrow = T)
matriz_a

matriz_b = matrix(c(3,2,1,-1,1,0,-2,-2,-4), ncol = 3, byrow = T)
matriz_b

```

### 3.1. Operaciones del ejercicio 3 - multiplicacion de matrices

```{r}

producto_ab = matriz_a %*% matriz_b
producto_ab

```

### 3.2. Calcular la transpuesta de la matriz B usando R

```{r}

traspuesta_b = t(matriz_b)
traspuesta_b

```

### 3.3. Calcular la inversa de la matriz A usando R

```{r}

inversa_a = solve(matriz_a)
inversa_a

```


### 5. Determine, si existen las inversas de las siguientes matrices:

```{r}

a_1 = matrix(c(-2,1,4,3), ncol = 2, byrow = T)
determinate_a = det(a_1)

if (determinate_a != 0){
  print('La matriz A es invertible')
  
  }else{
    print('La matriz A NO es invertible')
}

b_1 = matrix(c(3,5,3,-5), ncol = 2, byrow = T)
determinate_b = det(b_1)

if (determinate_b != 0){
  print('La matriz B es invertible')
  
  }else{
    print('La matriz B NO es invertible')
}

```


### 6. Una matriz𝐴𝑛×𝑛 se dice que es involutiva si, 𝐴2 = 𝐼𝑛. Mostrar si la siguiente matriz es involutiva:

```{r}

a_2 = matrix(c(2,1,1,-1,0,-1,-2,-2,-1), ncol = 3, byrow = T)
a_2

involutiva_a = a_2 %*% a_2
involutiva_a

```

### 7. Mostrar que el poducto PQ es una matriz de probabilidad.

```{r}

p = matrix(c((1/3),(1/3),(1/3), (1/4),(1/2),(1/4),0,0,1), ncol = 3, byrow = T)
q = matrix(c((1/6),(1/6),(2/3),(1/8),(3/8),(5/8),(1/5),(3/5),(1/5)), ncol = 3, byrow = T)

result = p %*% q
result

fila_1 = result[1,1] + result[1,2] + result[1,3]
fila_1

fila_2 = result[2,1] + result[2,2] + result[2,3]
fila_2

fila_3 = result[3,1] + result[3,2] + result[3,3]
fila_3
```
