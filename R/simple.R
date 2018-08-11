
source('color.R')

titulo  = ''
tipo    = 'l' # l 
labx    = ''
laby    = ''

plot(x,y,
     type = '',
     lty  = '',
     lwd  = '',
     xlab = '',
     ylab = '',
     main = '',
     axes = FALSE)

plot(moomins$Year, moomins$PopSize, 
     type = "l", 
     col = "red", 
     lwd = 3,
     xlab = "Year",
     ylab = "Population Size",
     main = "Moomin Population Size on Ruissalo 1971 - 2001")