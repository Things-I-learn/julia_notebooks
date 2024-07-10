### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ d1ab8e6c-47e7-4009-b272-c3e3356fff62
# Programación Paralela en Julia

using Base.Threads

# ╔═╡ ea493f34-480f-42ad-aa6a-4e95bf169edc
# Programación Funcional en Julia

# Definimos una función de orden superior
function apply_function(f, data)
    return [f(x) for x in data]
end

# ╔═╡ 5766772e-ccf4-4c53-b295-070b016867b4
# Usamos una función lambda para elevar al cuadrado
data = [1, 2, 3, 4, 5]

# ╔═╡ 1b524847-a8f0-4e35-b2be-f7ea9254e2c0
squared = apply_function(x -> x^2, data)

# ╔═╡ db8e76e4-901d-44a3-b2ad-63df75d12b5b
println("Datos originales: ", data)

# ╔═╡ 38a37a8c-7a90-433f-a505-7d31e89c09da
println("Datos elevados al cuadrado: ", squared)

# ╔═╡ d13e69c6-f07a-4149-9a90-3cb309f83f43
# Definimos una función que se ejecutará en paralelo
function parallel_sum(arr)
    sum = 0
    @threads for i in 1:length(arr)
        sum += arr[i]
    end
    return sum
end

# ╔═╡ 5dbc0303-7c76-45f7-b376-090237ff7134
# Usamos la función en un arreglo grande
large_array = rand(1:100, 10^6)

# ╔═╡ ae047e73-0207-4be1-99d2-1d33eea523c7
total_sum = parallel_sum(large_array)

# ╔═╡ 77853713-a62f-4371-b423-f1eff6de0b69
println("Suma total de elementos en el arreglo grande: ", total_sum)

# ╔═╡ Cell order:
# ╠═ea493f34-480f-42ad-aa6a-4e95bf169edc
# ╠═5766772e-ccf4-4c53-b295-070b016867b4
# ╠═1b524847-a8f0-4e35-b2be-f7ea9254e2c0
# ╠═db8e76e4-901d-44a3-b2ad-63df75d12b5b
# ╠═38a37a8c-7a90-433f-a505-7d31e89c09da
# ╠═d1ab8e6c-47e7-4009-b272-c3e3356fff62
# ╠═d13e69c6-f07a-4149-9a90-3cb309f83f43
# ╠═5dbc0303-7c76-45f7-b376-090237ff7134
# ╠═ae047e73-0207-4be1-99d2-1d33eea523c7
# ╠═77853713-a62f-4371-b423-f1eff6de0b69
