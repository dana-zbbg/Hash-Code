function naive(instance::Instance, T::Int )
    intersections = Vector{Intersection}()
    for i=1:Instance.I #pour chaque intersection
        lights = Vector{Light}()
        E = 0 #nb de incoming streets
        for s in Instance.streets #on regarde si la route est une incoming street
            if s.E == i #if s is an incoming street on i
                E += 1
                push!(lights, Light(s.name, T))
            end
        end
        push!(instersections, Intersection(i = i, E = E, lights = lights))
    end
    return intersections
end
