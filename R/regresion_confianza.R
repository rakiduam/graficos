# gráfico basico con R base. Intervalos confianza
# limpia datos anteriores
rm ( list = ls () )
dev.off ( dev.list () ["RStudioGD"])
cat( rep ( "\n", 64 ) )

# Generacion de datos x e y, aleatorios a modo de prueba.
df <- data.frame ( x = c ( 1:100 ) )
df$y <- 2 + 3 * df$x + rnorm(100, sd = 40)

# Grafico vacio, que da formato
plot ( df$y ~ df$x,
       axes = F,
       type = "n",
       xlab = "datos X",
       ylab = "datos Y" )

# Ticks del eje X
xtics = seq ( min ( df$x ), max ( df$x ), by = round ( length ( df$x ) / 12 ) ) - 1
ytics = seq ( min ( df$y ), max ( df$y ), by = round ( length ( df$y ) / 2 ) ) - 1

# Grilla de datos del gráfico
#grid()
grid ( xtics, #NULL,
       ytics, #NULL
       lwd = 0.1,
       lty = 3,
       col = "gray85")#col="gray80")

# Ejes en X
axis ( 1,
       at = xtics,
       label = xtics,
       tick = T,
       family = "sans"
       )

# Ejes en Y
axis ( 2, 
      at = ytics,
      label = ytics,
      tick = T,
      family = "sans"
      )


#axis(2,at=seq(min(df$y),max(df$y),25),label=seq(min(df$y),max(df$y),25),
#      tick=T,family="serif")
#     label=c(seq(from=0, to=100, by=25)), tick=T, family="sans")
#axis(2, at=c(seq(from=0, to=100, by=25)),
#     label=c(seq(from=0, to=100, by=25)), tick=T, family="serif")
#grafico datos originales
points (df$x, df$y, pch = 20, col = "#ca0020")
lines  (df$x, df$y, lty = 1, col = "#ca0020")
#generacion de lm
m = lm(df$y ~ df$x)
wx = par("usr")[1:2]
new.x = seq(wx[1], wx[2], len = 100)
#agregando a grafico linea de regresión/tendencia
#intervalo confianza regresion
pred = predict(m, new = data.frame(x = new.x), interval = "conf")
lines(new.x,
      pred[, "fit"],
      lwd = 1,
      lty = 1,
      col = '#000000')
lines(new.x,
      pred[, "lwr"],
      lwd = 1,
      lty = 1,
      col = '#0571b0')
lines(new.x,
      pred[, "upr"],
      lwd = 1,
      lty = 1,
      col = '#0571b0')
#intervalo confianza datos predichos
pred2 = predict(m, new = data.frame(x = new.x), interval = "predict")
lines(new.x,
      pred2[, "lwr"],
      lwd = 1,
      lty = 3,
      col = "#33a02c")
lines(new.x,
      pred2[, "upr"],
      lwd = 1,
      lty = 3,
      col = "#33a02c")
#legend(x='left',y='up',legend=c('aa','bb','cc','ee'))
#text(family='serif')
#dev.off()
