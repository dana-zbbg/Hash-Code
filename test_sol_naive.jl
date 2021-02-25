include("parser.jl")
include("solution.jl")
include("naive_function.jl")


path = joinpath(".", "a.txt")
path_write_sol = joinpath(".", "solutions_naive2/sol_a.txt")


T = 1

instance = lire_instance(path)
intersections = naive(instance, T)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "b.txt")
path_write_sol = joinpath(".", "solutions_naive2/sol_b.txt")

instance = lire_instance(path)
intersections = naive(instance, T)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "c.txt")
path_write_sol = joinpath(".", "solutions_naive2/sol_c.txt")

instance = lire_instance(path)
intersections = naive(instance, T)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "d.txt")
path_write_sol = joinpath(".", "solutions_naive2/sol_d.txt")

instance = lire_instance(path)
intersections = naive(instance, T)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "e.txt")
path_write_sol = joinpath(".", "solutions_naive2/sol_e.txt")

instance = lire_instance(path)
intersections = naive(instance, T)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)


path = joinpath(".", "f.txt")
path_write_sol = joinpath(".", "solutions_naive2/sol_f.txt")

instance = lire_instance(path)
intersections = naive(instance, T)
schedule = Schedule(A = instance.I, intersections = intersections)

write_solution(schedule, path_write_sol)
