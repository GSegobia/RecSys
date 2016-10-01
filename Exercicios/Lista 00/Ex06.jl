function circle_equation(r,x,y,a,b)
    value = (x - a)^2 + (y - b)^2 - r^2
    if(value <= 0)
        return true
    end
    return false
end

function f_cria_func_transf(m, n, r, x, y)
    fun_transf = fill(x, (m,n))

    area = n * m
    area_circulo = (pi * r^2)/2

    circle_center = [round(n/2), round(m/2)]

    for i in 1:m
        for j in 1:n
            if(circle_equation(r,j,i,circle_center[1], circle_center[2]))
                fun_transf[i, j] = y
            end
        end
    end

    return fun_transf
end

println(f_cria_func_transf(10, 10, 3, 1, 0))
