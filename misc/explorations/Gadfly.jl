using Gadfly
using RDatasets

iris = dataset("datasets", "iris")
plot(iris, x=:SepalWidth, y=:SepalLength, color=:Species, Geom.point)
