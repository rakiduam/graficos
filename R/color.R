# carga "paletas" bases de colores. Y algunas escalas de colores
# ayuda a que sea un proceso de diseño más rápido para ciertos tipos graficos
# en especial aquellos que necesitan colores de tipo divergente, donde se
# logre un máximo de diferencia entre las variables a graficar

# serie de colores de tipo divergente
#### SERIES DE COLORES ####

#paleta1 = c ( 'red', 'green', 'blue', 'magenta', 'cyan' )
# "#FFBF7F" "#FF7F00" "#FFFF99" "#FFFF32" "#B2FF8C" "#32FF00" "#A5EDFF" "#19B2FF" 
# "#CCBFFF" "#654CFF" "#FF99BF" "#E51932"
# paleta1 = c ( rgb(255, 191, 127, max=255), 
#               rgb(255, 127, 0, max=255), 
#               rgb(255, 255, 153, max=255), 
#               rgb(255, 255, 50, max=255), 
#               rgb(178, 255, 140, max=255), 
#               rgb(50, 255, 0, max=255), 
#               rgb(165, 237, 255, max=255), 
#               rgb(25, 178, 255, max=255), 
#               rgb(204, 191, 255, max=255), 
#               rgb(101, 76, 255, max=255), 
#               rgb(255, 153, 191, max=255), 
#               rgb(229, 25, 50, max=255) )

# paleta1 = c ("#E51932",
#              "#19B2FF",
#              "#32FF00",
#              "#FF7F00",
#              "#654CFF",
#              "#A5EDFF",
#              "#FFFF32",
#              "#B2FF8C",
#              "#CCBFFF",
#              "#FF99BF",
#              "#FFBF7F",
#              "#FFFF99")

neutral = c ( 'gold','black' )
# "#8E0152" "#C51B7D" "#DE77AE" "#F1B6DA" "#FDE0EF" "#F7F7F7" "#E6F5D0" "#B8E186" 
# "#7FBC41" "#4D9221" "#276419"
PiYG= c ( rgb ( 142, 1, 82, max = 255 ), rgb( 197, 27, 125, max = 255 ), 
                rgb ( 222, 119, 174, max = 255 ), rgb ( 241, 182, 218, max = 255 ), 
                rgb ( 253, 224, 239, max = 255 ), rgb ( 247, 247, 247, max = 255 ), 
                rgb ( 230, 245, 208, max = 255 ), rgb ( 184, 225, 134, max = 255 ), 
                rgb ( 127, 188, 65, max = 255 ), rgb ( 77, 146, 33, max = 255 ), 
                rgb ( 39, 100, 25, max = 255 ) )

#### ColorRampPalette: ####
paleta1.palette<- colorRampPalette (paleta1)

RdBu.palette <- colorRampPalette ( c ( "#720000", "#D00000", "#FF4242",
                                       "#FFC8C8", "#FFECEC", "#FFFFFF", 
                                       "#BFCCF4", "#4169E1", "#1523D3", 
                                       "#0000B7", "#00008B" ) , space = 'rgb' )

# redblue.palette <- colorRampPalette ( c ( "#67001F", "#B2182B", "#D6604D", 
#                                           "#F4A582", "#FDDBC7", "#F7F7F7", 
#                                           "#D1E5F0", "#92C5DE", "#4393C3", 
#                                           "#2166AC", "#053061" ) )
# 
# redblue.ramp <- colorRamp ( c ( "#67001F", "#B2182B", "#D6604D", "#F4A582", 
#                                 "#FDDBC7", "#F7F7F7", "#D1E5F0", "#92C5DE", 
#                                 "#4393C3", "#2166AC", "#053061"))
# 

#matplotlib, para distintos tipos de ceguera al color
viridis.palette <-colorRampPalette ( c ( "#440154FF", "#482878FF", "#3E4A89FF", 
                                         "#31688EFF", "#26828EFF", "#1F9E89FF",
                                         "#35B779FF", "#6DCD59FF", "#B4DE2CFF",
                                         "#FDE725FF") )

jet.palette <- colorRampPalette ( c ( "#00007F", "#0000FF", "#007FFF", "#00FFFF", 
                                "#7FFF7F", "#FFFF00", "#FF7F00", "#FF0000", 
                                "#7F0000" ) )

# jet.palette <- colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan", "#7FFF7F",
#                                  "yellow", "#FF7F00", "red", "#7F0000"))




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
# filled.contour(m, col = paleta1.palette(20))
# filled.contour(m, col = viridis.palette(20))
# filled.contour(m, col = RdBu.palette(20))
# filled.contour(m, col = redblue.palette(20))
# filled.contour(m, col = redblue.ramp(20))
# filled.contour(m, col = paleta2.palette(20))
# filled.contour(m, col = neutral.palette(20))
# filled.contour(m, col = viridis.palette(20))
# filled.contour(m, col = jet.palette(5))
# 
# "white"                "aliceblue"            "antiquewhite"         "antiquewhite1"       
# "antiquewhite2"        "antiquewhite3"        "antiquewhite4"        "aquamarine"          
# "aquamarine1"          "aquamarine2"          "aquamarine3"          "aquamarine4"         
# "azure"                "azure1"               "azure2"               "azure3"              
# "azure4"               "beige"                "bisque"               "bisque1"             
# "bisque2"              "bisque3"              "bisque4"              "black"               
# "blanchedalmond"       "blue"                 "blue1"                "blue2"               
# "blue3"                "blue4"                "blueviolet"           "brown"               
# "brown1"               "brown2"               "brown3"               "brown4"              
# "burlywood"            "burlywood1"           "burlywood2"           "burlywood3"          
# "burlywood4"           "cadetblue"            "cadetblue1"           "cadetblue2"          
# "cadetblue3"           "cadetblue4"           "chartreuse"           "chartreuse1"         
# "chartreuse2"          "chartreuse3"          "chartreuse4"          "chocolate"           
# "chocolate1"           "chocolate2"           "chocolate3"           "chocolate4"          
# "coral"                "coral1"               "coral2"               "coral3"              
# "coral4"               "cornflowerblue"       "cornsilk"             "cornsilk1"           
# "cornsilk2"            "cornsilk3"            "cornsilk4"            "cyan"                
# "cyan1"                "cyan2"                "cyan3"                "cyan4"               
# "darkblue"             "darkcyan"             "darkgoldenrod"        "darkgoldenrod1"      
# "darkgoldenrod2"       "darkgoldenrod3"       "darkgoldenrod4"       "darkgray"            
# "darkgreen"            "darkgrey"             "darkkhaki"            "darkmagenta"         
# "darkolivegreen"       "darkolivegreen1"      "darkolivegreen2"      "darkolivegreen3"     
# "darkolivegreen4"      "darkorange"           "darkorange1"          "darkorange2"         
# "darkorange3"          "darkorange4"          "darkorchid"           "darkorchid1"         
# "darkorchid2"          "darkorchid3"          "darkorchid4"          "darkred"             
# "darksalmon"           "darkseagreen"         "darkseagreen1"        "darkseagreen2"       
# "darkseagreen3"        "darkseagreen4"        "darkslateblue"        "darkslategray"       
# "darkslategray1"       "darkslategray2"       "darkslategray3"       "darkslategray4"      
# "darkslategrey"        "darkturquoise"        "darkviolet"           "deeppink"            
# "deeppink1"            "deeppink2"            "deeppink3"            "deeppink4"           
# "deepskyblue"          "deepskyblue1"         "deepskyblue2"         "deepskyblue3"        
# "deepskyblue4"         "dimgray"              "dimgrey"              "dodgerblue"          
# "dodgerblue1"          "dodgerblue2"          "dodgerblue3"          "dodgerblue4"         
# "firebrick"            "firebrick1"           "firebrick2"           "firebrick3"          
# "firebrick4"           "floralwhite"          "forestgreen"          "gainsboro"           
# "ghostwhite"           "gold"                 "gold1"                "gold2"               
# "gold3"                "gold4"                "goldenrod"            "goldenrod1"          
# "goldenrod2"           "goldenrod3"           "goldenrod4"           "gray"                
# "gray0"                "gray1"                "gray2"                "gray3"               
# "gray4"                "gray5"                "gray6"                "gray7"               
# "gray8"                "gray9"                "gray10"               "gray11"              
# "gray12"               "gray13"               "gray14"               "gray15"              
# "gray16"               "gray17"               "gray18"               "gray19"              
# "gray20"               "gray21"               "gray22"               "gray23"              
# "gray24"               "gray25"               "gray26"               "gray27"              
# "gray28"               "gray29"               "gray30"               "gray31"              
# "gray32"               "gray33"               "gray34"               "gray35"              
# "gray36"               "gray37"               "gray38"               "gray39"              
# "gray40"               "gray41"               "gray42"               "gray43"              
# "gray44"               "gray45"               "gray46"               "gray47"              
# "gray48"               "gray49"               "gray50"               "gray51"              
# "gray52"               "gray53"               "gray54"               "gray55"              
# "gray56"               "gray57"               "gray58"               "gray59"              
# "gray60"               "gray61"               "gray62"               "gray63"              
# "gray64"               "gray65"               "gray66"               "gray67"              
# "gray68"               "gray69"               "gray70"               "gray71"              
# "gray72"               "gray73"               "gray74"               "gray75"              
# "gray76"               "gray77"               "gray78"               "gray79"              
# "gray80"               "gray81"               "gray82"               "gray83"              
# "gray84"               "gray85"               "gray86"               "gray87"              
# "gray88"               "gray89"               "gray90"               "gray91"              
# "gray92"               "gray93"               "gray94"               "gray95"              
# "gray96"               "gray97"               "gray98"               "gray99"              
# "gray100"              "green"                "green1"               "green2"              
# "green3"               "green4"               "greenyellow"          "grey"                
# "grey0"                "grey1"                "grey2"                "grey3"               
# "grey4"                "grey5"                "grey6"                "grey7"               
# "grey8"                "grey9"                "grey10"               "grey11"              
# "grey12"               "grey13"               "grey14"               "grey15"              
# "grey16"               "grey17"               "grey18"               "grey19"              
# "grey20"               "grey21"               "grey22"               "grey23"              
# "grey24"               "grey25"               "grey26"               "grey27"              
# "grey28"               "grey29"               "grey30"               "grey31"              
# "grey32"               "grey33"               "grey34"               "grey35"              
# "grey36"               "grey37"               "grey38"               "grey39"              
# "grey40"               "grey41"               "grey42"               "grey43"              
# "grey44"               "grey45"               "grey46"               "grey47"              
# "grey48"               "grey49"               "grey50"               "grey51"              
# "grey52"               "grey53"               "grey54"               "grey55"              
# "grey56"               "grey57"               "grey58"               "grey59"              
# "grey60"               "grey61"               "grey62"               "grey63"              
# "grey64"               "grey65"               "grey66"               "grey67"              
# "grey68"               "grey69"               "grey70"               "grey71"              
# "grey72"               "grey73"               "grey74"               "grey75"              
# "grey76"               "grey77"               "grey78"               "grey79"              
# "grey80"               "grey81"               "grey82"               "grey83"              
# "grey84"               "grey85"               "grey86"               "grey87"              
# "grey88"               "grey89"               "grey90"               "grey91"              
# "grey92"               "grey93"               "grey94"               "grey95"              
# "grey96"               "grey97"               "grey98"               "grey99"              
# "grey100"              "honeydew"             "honeydew1"            "honeydew2"           
# "honeydew3"            "honeydew4"            "hotpink"              "hotpink1"            
# "hotpink2"             "hotpink3"             "hotpink4"             "indianred"           
# "indianred1"           "indianred2"           "indianred3"           "indianred4"          
# "ivory"                "ivory1"               "ivory2"               "ivory3"              
# "ivory4"               "khaki"                "khaki1"               "khaki2"              
# "khaki3"               "khaki4"               "lavender"             "lavenderblush"       
# "lavenderblush1"       "lavenderblush2"       "lavenderblush3"       "lavenderblush4"      
# "lawngreen"            "lemonchiffon"         "lemonchiffon1"        "lemonchiffon2"       
# "lemonchiffon3"        "lemonchiffon4"        "lightblue"            "lightblue1"          
# "lightblue2"           "lightblue3"           "lightblue4"           "lightcoral"          
# "lightcyan"            "lightcyan1"           "lightcyan2"           "lightcyan3"          
# "lightcyan4"           "lightgoldenrod"       "lightgoldenrod1"      "lightgoldenrod2"     
# "lightgoldenrod3"      "lightgoldenrod4"      "lightgoldenrodyellow" "lightgray"           
# "lightgreen"           "lightgrey"            "lightpink"            "lightpink1"          
# "lightpink2"           "lightpink3"           "lightpink4"           "lightsalmon"         
# "lightsalmon1"         "lightsalmon2"         "lightsalmon3"         "lightsalmon4"        
# "lightseagreen"        "lightskyblue"         "lightskyblue1"        "lightskyblue2"       
# "lightskyblue3"        "lightskyblue4"        "lightslateblue"       "lightslategray"      
# "lightslategrey"       "lightsteelblue"       "lightsteelblue1"      "lightsteelblue2"     
# "lightsteelblue3"      "lightsteelblue4"      "lightyellow"          "lightyellow1"        
# "lightyellow2"         "lightyellow3"         "lightyellow4"         "limegreen"           
# "linen"                "magenta"              "magenta1"             "magenta2"            
# "magenta3"             "magenta4"             "maroon"               "maroon1"             
# "maroon2"              "maroon3"              "maroon4"              "mediumaquamarine"    
# "mediumblue"           "mediumorchid"         "mediumorchid1"        "mediumorchid2"       
# "mediumorchid3"        "mediumorchid4"        "mediumpurple"         "mediumpurple1"       
# "mediumpurple2"        "mediumpurple3"        "mediumpurple4"        "mediumseagreen"      
# "mediumslateblue"      "mediumspringgreen"    "mediumturquoise"      "mediumvioletred"     
# "midnightblue"         "mintcream"            "mistyrose"            "mistyrose1"          
# "mistyrose2"           "mistyrose3"           "mistyrose4"           "moccasin"            
# "navajowhite"          "navajowhite1"         "navajowhite2"         "navajowhite3"        
# "navajowhite4"         "navy"                 "navyblue"             "oldlace"             
# "olivedrab"            "olivedrab1"           "olivedrab2"           "olivedrab3"          
# "olivedrab4"           "orange"               "orange1"              "orange2"             
# "orange3"              "orange4"              "orangered"            "orangered1"          
# "orangered2"           "orangered3"           "orangered4"           "orchid"              
# "orchid1"              "orchid2"              "orchid3"              "orchid4"             
# "palegoldenrod"        "palegreen"            "palegreen1"           "palegreen2"          
# "palegreen3"           "palegreen4"           "paleturquoise"        "paleturquoise1"      
# "paleturquoise2"       "paleturquoise3"       "paleturquoise4"       "palevioletred"       
# "palevioletred1"       "palevioletred2"       "palevioletred3"       "palevioletred4"      
# "papayawhip"           "peachpuff"            "peachpuff1"           "peachpuff2"          
# "peachpuff3"           "peachpuff4"           "peru"                 "pink"                
# "pink1"                "pink2"                "pink3"                "pink4"               
# "plum"                 "plum1"                "plum2"                "plum3"               
# "plum4"                "powderblue"           "purple"               "purple1"             
# "purple2"              "purple3"              "purple4"              "red"                 
# "red1"                 "red2"                 "red3"                 "red4"                
# "rosybrown"            "rosybrown1"           "rosybrown2"           "rosybrown3"          
# "rosybrown4"           "royalblue"            "royalblue1"           "royalblue2"          
# "royalblue3"           "royalblue4"           "saddlebrown"          "salmon"              
# "salmon1"              "salmon2"              "salmon3"              "salmon4"             
# "sandybrown"           "seagreen"             "seagreen1"            "seagreen2"           
# "seagreen3"            "seagreen4"            "seashell"             "seashell1"           
# "seashell2"            "seashell3"            "seashell4"            "sienna"              
# "sienna1"              "sienna2"              "sienna3"              "sienna4"             
# "skyblue"              "skyblue1"             "skyblue2"             "skyblue3"            
# "skyblue4"             "slateblue"            "slateblue1"           "slateblue2"          
# "slateblue3"           "slateblue4"           "slategray"            "slategray1"          
# "slategray2"           "slategray3"           "slategray4"           "slategrey"           
# "snow"                 "snow1"                "snow2"                "snow3"               
# "snow4"                "springgreen"          "springgreen1"         "springgreen2"        
# "springgreen3"         "springgreen4"         "steelblue"            "steelblue1"          
# "steelblue2"           "steelblue3"           "steelblue4"           "tan"                 
# "tan1"                 "tan2"                 "tan3"                 "tan4"                
# "thistle"              "thistle1"             "thistle2"             "thistle3"            
# "thistle4"             "tomato"               "tomato1"              "tomato2"             
# "tomato3"              "tomato4"              "turquoise"            "turquoise1"          
# "turquoise2"           "turquoise3"           "turquoise4"           "violet"              
# "violetred"            "violetred1"           "violetred2"           "violetred3"          
# "violetred4"           "wheat"                "wheat1"               "wheat2"              
# "wheat3"               "wheat4"               "whitesmoke"           "yellow"              
# "yellow1"              "yellow2"              "yellow3"              "yellow4"             
# "yellowgreen"      