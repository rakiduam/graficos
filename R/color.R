# carga "paletas" bases de colores. Y algunas escalas de colores
# ayuda a que sea un proceso de diseño más rápido para ciertos tipos graficos
# en especial aquellos que necesitan colores de tipo divergente, donde se
# logre un máximo de diferencia entre las variables a graficar

# serie de colores de tipo divergente
paleta1 = c ( 'red', 'green', 'blue', 'magenta', 'cyan' )
neutral = c ( 'gold','black' )
divergente= c ( rgb ( 142, 1, 82, max = 255 ), rgb( 197, 27, 125, max = 255 ), 
                rgb ( 222, 119, 174, max = 255 ), rgb ( 241, 182, 218, max = 255 ), 
                rgb ( 253, 224, 239, max = 255 ), rgb ( 247, 247, 247, max = 255 ), 
                rgb ( 230, 245, 208, max = 255 ), rgb ( 184, 225, 134, max = 255 ), 
                rgb ( 127, 188, 65, max = 255 ), rgb ( 77, 146, 33, max = 255 ), 
                rgb ( 39, 100, 25, max = 255 ) )

# paleta2

# colorRamp1
rainbow = c(rgb(255,0,0, max=255), rgb(255,255,255, max=255))
redblue.palette <-colorRampPalette(c('red','blue'), space='rgb')
viridis.palette <-colorRampPalette(c('blue','yellow','green'), space='rgb')
paleta1.palette <-colorRampPalette(paleta1, space='Lab')
paleta2.palette <-colorRampPalette(paleta1, space='rgb')
neutral.palette <-colorRampPalette(neutral, space='Lab')
rainbow.palette <-colorRampPalette(t(rainbow), space='Lab')
divergente.palette <-colorRampPalette(divergente, space='rgb')
## space="Lab" helps when colors don't form a natural sequence
m <- outer(1:20,1:20,function(x,y) sin(sqrt(x*y)/3))
rgb.palette <- colorRampPalette(c("red", "orange", "blue"),
                                space = "rgb")
Lab.palette <- colorRampPalette(c("red", "orange", "blue"),
                                space = "Lab")
filled.contour(m, col = rgb.palette(20))
filled.contour(m, col = Lab.palette(20))
filled.contour(m, col = redblue.palette(20))
filled.contour(m, col = viridis.palette(20))
filled.contour(m, col = paleta1.palette(20))
filled.contour(m, col = paleta2.palette(20))
filled.contour(m, col = neutral.palette(20))
filled.contour(m, col = rainbow.palette(20))
filled.contour(m, col = divergente.palette(22))
