include("parser.jl")
include("solution.jl")
include("naive_function.jl")

path = joinpath(".", "a.txt")
instance = lire_instance(path)
global I = instance.I

intersections = naive(instance, 2)
schedule = Schedule(A = I, intersections = intersections)
