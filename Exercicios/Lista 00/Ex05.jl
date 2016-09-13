using Distributions
using PyPlot

normal = Normal(20, 5)

vector = rand(normal, 100)
vector_a = sort(vector)

grid("on")
plot(vector_a, pdf(normal, vector_a))
show()
