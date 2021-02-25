function naive(instance::Instance, T::Int )
    intersections = Vector{Intersection}()
    for i=1:instance.I #pour chaque intersection
        lights = Vector{Light}()
        E = 0 #nb de incoming streets
        for s in instance.streets #on regarde si la route est une incoming street
            if s.E == i #if s is an incoming street on i
                E += 1
                push!(lights, Light(street = s.name, T = T))
            end
        end
        push!(intersections, Intersection(i = i, E = E, lights = lights))
    end
    return intersections
end
