#Created on Fri Feb 05 09:19:20 2021
#author: Angel Moreno

#Este script es para mostrarles el uso b+asico de algunas sentecias de R
#Siempre que empieze una l�nea con el simnbolo de gato (#), esa l�nea sera un comentario

#La asignaci�n (empleremos los carecteres "<-" para asignaci�n) de valores a
#variables en R y la consulta de ellas se realiza de la siguiente forma:

x <- 3 #Preciona [Ctrl] + [Enter] para ejectuar esta l�nea en la consola
x      #[Ctrl] + [Enter]

#Otras formas de asignaci�n, preciona [Ctrl] + [Enter] en cada l�nea
x = 4
x
10 -> x
x

#Para imprimir con alg�n comentario usamos la funci�n print()
print("Hola mundo!")

#Para unir texto y variables usamos la funci�n paste() dentro del print()
print(paste("Este es valor de x =", x)) #El separador por default es el espacio " "

#La creaci�n de un vector en R y la consulta de ello se realiza de la siguiente forma:
datos <- c(4, 2, 4, 5)
n <- length(datos) #La funci�n length() nos la longitud de los datos
datos
n
min(datos) #M�nimo
max(datos) #M�ximo
sum(datos) #Suma
ord <- sort(datos) #Ordenamos los datos
ord
ord[1] #El primero elemento del vector ord
ord[n] #El ultimo elemento del vector ord

#Otras rutinas �tiles para analizar vectores son las siguientes:

data <- c(1, 4, 2, 4, 2, 5, 6, 7, 4, 76, 3, 2, 5, 6, 7)
mean(data) #Media
median(data) #Mediana
summary(data) #Resumen de las variables
table(data) #Crea una tabla de frecuencias
var(data) #Varianza
sd(data) #Desviaci�n estandar
otra <- c(1, 5, 3, 5, 3, 65, 4, 6, 3, 6, 3, 56, 4)
length(otra)
length(data)
otra <- c(otra, 2, 4) #Agregamos el 2 y 4 al vector otra
cor(data, otra) #Coeficiente de correlaci�n entre los dos vectores

#Para crear una matr�z, se ocupa la rutina matrix. Toma como argumentos
#los elementos por acomodar por columnas (la opci�n byrow=TRUE cambia el orden
#de llenado) y las dimensiones. Por ejemplo, M <- matrix(rep(0, 9), nrow=3, ncol=3)
#produce una matriz tres por tres con puros ceros:

M <- matrix(rep(0, 9), nrow=3, ncol=3)
M

#Para comparaciones entre vectores, las subrutinas all y any sirven para
#determinar si todos o algunos de los elementos son iguales:

a <- c(1, 2, 3)
b <- c(1, 2, 4)
a == b
all(a == b) #Todos son iguales
any(a == b) #Alguno es igual

#La aritm�tica funciona en grandes rasgos como uno esperar�a, con el
#detalle que las operaciones vectoriales y matriciales de �lgebra lineal
#contienen s�mbolos de porcentaje mientras los que operan por elementos tienen
#la notaci�n est�ndar:

a <- 3
b <- 4
c <- c(5, 6, 7)
d <- c(8, 10, 12)
a + b
a - b
a * b
a / b
a^b
b^a
a**b
a + c
c + d
c * d
c %*% d
e <- matrix(c(1, 2, 3, 4), nrow=2)
e
f <- matrix(c(2, 4, 6, 8), nrow=2)
f
e + f
e - f
e * f
e %*% f

#El redondeo de enteros a decimales se hace con las tres reglas: hacia abajo
#con la funci�n piso floor, hacia arriba con la funci�n techo ceiling y
#al entero m�s cercano con round. La divisi�n entera se logra con %/% y
#el residuo (tambi�n llamado modulo, que en R funciona hasta con valores decimales) con %%:

d <- 7.3
floor(d) #Piso
ceiling(d) #Techo
round(d) #Redondeo
print(d / 2 )
d %/% 2 #Parte entera
d %% 2 #Residuo



x <- 123.4
sqrt(x)
exp(x)
sin(x)
cos(x)
tan(x)
tanh(2.5)
log(x)
log(x, 10)
log(x, 2)


factorial(5)
choose(9, 3)
factorial(9) / (factorial(6) * factorial(3))


s <- seq(4, 100, 2)
s
r <- rep(13, 20)
r
i <- 2:12
i
c <- cut(s, breaks=4)
table(c)
tail(s)
tail(s, 10)
head(s)
head(s, 8)


x <- 3
y <- NULL
if (x > 5) { y <- x * 3 } else { y <- 6 - x }
y
z <- NULL
if (x %% 2 == 1 & y %% 2 == 1) { z <- 2 } else { z <- 3 }
z
if (z != 1) { print("no es uno") }
if (x == 2 | y == 2 | z == 2) { print("hay un dos") } else { print("no hay un dos") }
for (i in 1:5) { print(2**i) }
while (x > 0) { print("quito uno"); x <- x - 1 }
x


potdos <- function(x) 2**x
potdos(3)

eucl <- function(x1, y1, x2, y2){
  dx <- x1 - x2; dy <- y1 - y2
  return(sqrt(dx^2 + dy^2))
}
eucl(1, 2, 3, 4)



runif(1)
runif(5)
runif(2, 4, 10)
runif(1) < 0.5
runif(1) < 0.5
runif(1) < 0.5
runif(5) < 0.5
sample(1:10, 3)
sample(1:10, 3)
sample(1:10)
sample(c(2, 4, 6), 10, prob=c(0.1, 0.2, 0.7), replace=TRUE)


rnorm(10) # media cero, desv. est. 1
rnorm(10, mean=5, sd=1.3)
rexp(2)
rexp(2, rate=3)


x <- 1:20
y <- sin(x)
plot(x, y)
plot(x, y, type="l")
lines(x, cos(x), col="red")
abline(h=0, lwd=5, col="green")
plot(x, y)
points(x + 1, cos(x + 1), pch=15, col="blue")
plot(x, y, main="Texto arriba", xlab="Etiqueta", ylab="Otra etiqueta")



png(filename="salida.png")
plot(x, y, pch=16)
graphics.off()


d1 <- c(10, 32, 34, 24, 49, 42, 89)
d2 <- c(30, 23, 45, 24, 75, 34, 12, 56, 33)
boxplot(d1)
boxplot(d2)
boxplot(d1, d2)



datos <- c(1.6, 4.6, 2.6, 3.6, 5.6, 6.6, 3.5, 2.2, 4.4, 5.2, 5.4, 7.6, 5.8, 4.4, 6.4)
hist(datos)
hist(datos, breaks=2)
histograma <- hist(datos)
histograma





