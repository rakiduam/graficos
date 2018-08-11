rm ( list = ls () )
dev.off ( dev.list () ["RStudioGD"])
cat( rep ( "\n", 64 ))

source('R/color.R')

#### Datos de ejemplo ####

# The mtcars dataset:
data=as.matrix(mtcars)
head(data)

# Default Heatmap (left)
heatmap(data)

# Use 'scale' to normalize (right)
heatmap(data, scale="column")

# No dendrogram nor reordering for neither column or row
heatmap(data, Colv = NA, Rowv = NA, scale="column")

#### pensando como poner los datos de imagenes.
#img <- as.matrix()
