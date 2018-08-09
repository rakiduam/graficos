
source('color.R') # paletas de colores previamente elegidas

plot(5, 
     5, 
     type="n", 
     axes=FALSE, 
     ann=FALSE, 
     xlim=c(0, 10), 
     ylim = c(0,10))

# Codigo base para grafico tipo boxplot
plot(1:5, col=colores[4])
