using PyPlot

file_directory = "../../Listas/ml-100k/u.data"
notas = 5
columns_number = 4

f = open(file_directory)

file_content = readdlm(f)

close(f)

file_content = sortrows(file_content, by = x->(x[3]))

figure("Histograma")
plt[:hist](file_content[:, 3], 1:6)
grid("on")
xlabel("Notas")
ylabel("Usuários")
title("Histograma")

show()
