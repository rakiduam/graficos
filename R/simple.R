rm ( list = ls () )
dev.off ( dev.list () ["RStudioGD"])
cat( rep ( "\n", 64 ))

source('R/color.R')

####  Generacion de datos x e y, aleatorios a modo de prueba. #####
df <- data.frame ( x = c ( 1:100 ) )
df$y <- 2 + 3 * df$x + rnorm(100, sd = 40)

#### Parametros del grafico #####
x = df$x
y = df$y

# colores
col1    = paleta1[1]
col2    = paleta1[2]

#
tipo    = 'l'                                 # tipo grafico p l b c o h s S n
ancho   = 1                                   # lwd

# ejes y titulo
titulo  = 'template grafico simple'           # titulo del grafico
labx    = 'eje x'                             # xlab
laby    = 'eje y'                             # ylab

# grafico
plot ( x = x,
       y = y,
       type = tipo,
       col  = col1,
       #lty  = '1',
       lwd  = ancho,
       xlab = labx,
       ylab = laby,
       main = titulo,
       axes = FALSE
       )

points(x,y)
grid ()

axis ( 1 )
axis ( 2 ) 
