# carga "paletas" bases de colores. Y algunas escalas de colores
# ayuda a que sea un proceso de diseño más rápido para ciertos tipos graficos
# en especial aquellos que necesitan colores de tipo divergente, donde se
# logre un máximo de diferencia entre las variables a graficar

# serie de colores de tipo divergente
#### SERIES DE COLORES ####

#paleta1 = c ( 'red', 'green', 'blue', 'magenta', 'cyan' )
# "#FFBF7F" "#FF7F00" "#FFFF99" "#FFFF32" "#B2FF8C" "#32FF00" "#A5EDFF" "#19B2FF" "#CCBFFF" "#654CFF" "#FF99BF" "#E51932"
paleta1 = c ( rgb(255, 191, 127, max=255), 
              rgb(255, 127, 0, max=255), 
              rgb(255, 255, 153, max=255), 
              rgb(255, 255, 50, max=255), 
              rgb(178, 255, 140, max=255), 
              rgb(50, 255, 0, max=255), 
              rgb(165, 237, 255, max=255), 
              rgb(25, 178, 255, max=255), 
              rgb(204, 191, 255, max=255), 
              rgb(101, 76, 255, max=255), 
              rgb(255, 153, 191, max=255), 
              rgb(229, 25, 50, max=255) )


neutral = c ( 'gold','black' )
# "#8E0152" "#C51B7D" "#DE77AE" "#F1B6DA" "#FDE0EF" "#F7F7F7" "#E6F5D0" "#B8E186" "#7FBC41" "#4D9221" "#276419"
PiYG= c ( rgb ( 142, 1, 82, max = 255 ), rgb( 197, 27, 125, max = 255 ), 
                rgb ( 222, 119, 174, max = 255 ), rgb ( 241, 182, 218, max = 255 ), 
                rgb ( 253, 224, 239, max = 255 ), rgb ( 247, 247, 247, max = 255 ), 
                rgb ( 230, 245, 208, max = 255 ), rgb ( 184, 225, 134, max = 255 ), 
                rgb ( 127, 188, 65, max = 255 ), rgb ( 77, 146, 33, max = 255 ), 
                rgb ( 39, 100, 25, max = 255 ) )

#### ColorRampPalette: ####
RdBu.palette <-colorRampPalette ( c ( 'red', 'white', 'blue' ) , space = 'rgb' )

viridis.palette <-colorRampPalette(c('blue','yellow','green'), space='rgb')

# # colorRamp1
# rainbow = c(rgb(255,0,0, max=255), rgb(255,255,255, max=255))
# 
# paleta1.palette <-colorRampPalette(paleta1, space='Lab')
# 
# paleta2.palette <-colorRampPalette(paleta1, space='rgb')
# 
# neutral.palette <-colorRampPalette(neutral, space='Lab')
# 
# rainbow.palette <-colorRampPalette(t(rainbow), space='Lab')
# 
# PiYG.palette <-colorRampPalette(PiYG, space='rgb')
# 
# rgb.palette <- colorRampPalette(c("red", "orange", "blue"),
#                                 space = "rgb")
# 
# Lab.palette <- colorRampPalette(c("red", "orange", "blue"),
#                                 space = "Lab")

## space="Lab" helps when colors don't form a natural sequence



# #### TEST DE PALETAS ####
# 
# m <- outer(1:20,1:20,function(x,y) sin(sqrt(x*y)/3))
# 
# 
# filled.contour(m, col = rgb.palette(20))
# filled.contour(m, col = Lab.palette(20))
# filled.contour(m, col = redblue.palette(20))
# filled.contour(m, col = viridis.palette(20))
# filled.contour(m, col = paleta1.palette(20))
# filled.contour(m, col = paleta2.palette(20))
# filled.contour(m, col = neutral.palette(20))
# filled.contour(m, col = rainbow.palette(20))
# filled.contour(m, col = divergente.palette(22))