function f_cria_func_transf(n, m, r, x, y)
    fun_transf = fill(x, (n,m))

    area = n * m
    area_circulo = (pi * r^2)/2

    println(area)
    println(area_circulo)

    return fun_transf
end

println(f_cria_func_transf(10, 10, 5, 1.0, 0.0))
