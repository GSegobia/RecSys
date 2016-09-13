function std_mean(matriz_rand)
    for i in 1:size(matriz_rand, 2)
        for j in 1:size(matriz_rand,1)
            matriz_rand[i, j] = (matriz_rand[i, j]-mean(matriz_rand[:,i]))/std(matriz_rand[:,i])
        end
    end
end

matrix = rand(4, 4)

println(matrix)

std_mean(matrix)

println(matrix)

println(mean(matrix[:, 1]))
println(std(matrix[:, 1]))

println(round(Int16, mean(matrix[:, 1])))
println(round(Int16, std(matrix[:, 1])))

#println(mean(matrix[:, 1]))
#println(std(matrix[:, 1]))
