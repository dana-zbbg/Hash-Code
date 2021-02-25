include("parser.jl")
include("solution.jl")
include("naive_function.jl")


path = joinpath(".", "a.txt")
path_write_sol = joinpath(".", "solutions_naive/sol_a.txt")

instance = lire_instance(path)
intersections = naive(instance, 2)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "b.txt")
path_write_sol = joinpath(".", "solutions_naive/sol_b.txt")

instance = lire_instance(path)
intersections = naive(instance, 2)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "c.txt")
path_write_sol = joinpath(".", "solutions_naive/sol_c.txt")

instance = lire_instance(path)
intersections = naive(instance, 2)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "d.txt")
path_write_sol = joinpath(".", "solutions_naive/sol_d.txt")

instance = lire_instance(path)
intersections = naive(instance, 2)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "e.txt")
path_write_sol = joinpath(".", "solutions_naive/sol_e.txt")

instance = lire_instance(path)
intersections = naive(instance, 2)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "f.txt")
path_write_sol = joinpath(".", "solutions_naive/sol_f.txt")

instance = lire_instance(path)
intersections = naive(instance, 2)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)
