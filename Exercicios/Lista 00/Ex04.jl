using PyPlot

vector = rand(500) * -4.0 + 2.0
vector_sorted = sort(vector)

grid("on")
plot(vector_sorted, sin(vector_sorted))
plot(vector_sorted, cos(vector_sorted))
plot(vector_sorted, 1.0./sin(vector_sorted))
plot(vector_sorted, 1.0./cos(vector_sorted))
show()

subplot(221)
title("sin")
grid("on")
plot(vector_sorted, sin(vector_sorted))

subplot(222)
title("cos")
grid("on")
plot(vector_sorted, cos(vector_sorted))

subplot(223)
title("1/sin")
grid("on")
plot(vector_sorted, 1.0./sin(vector_sorted))

subplot(224)
title("1/cos")
grid("on")
plot(vector_sorted, 1.0./cos(vector_sorted))

show()
