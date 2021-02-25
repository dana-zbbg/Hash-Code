include("parser.jl")
include("solution.jl")
include("naive_function.jl")

path = joinpath(".", "a.txt")
instance = lire_instance(path)

intersections = naive(instance, 2)
schedule = Schedule(A = instance.I, intersections = intersections)
