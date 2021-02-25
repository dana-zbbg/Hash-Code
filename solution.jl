struct Light
    street::String  #nom de la route
    T::Int  #duree de son feu vert

    Light(; street, T) = new(street, T)
end


struct Intersection
    i::Int  #id de l'intersection
    E::Int  #nb de routes qui vont vers cette intersection
    lights::Vector{Light}  #vecteur des routes et de leur duree de feu vert

    Intersection(; i, E, lights) = new(i, E, lights)
end


struct Schedule
    A::Int  #nb intersections
    intersections::Vector{Intersection}

    Schedule(; A, intersections) = new(A, intersections)
end

function Base.string(light::Light)::String
    street = light.street
    T = light.T
    str = street * " $T"
    return str
end


function Base.string(intersection::Intersection)::String
    i = intersection.i
    E = intersection.E
    lights = intersection.lights
    str = "$(i)" * "\n" * "$E"
    for light in intersection.lights
        str *= "\n" * string(light)
    end
    return str
end


function Base.string(schedule::Schedule)::String
    A = schedule.A
    str = "$A"
    for intersection in schedule.intersections
        str *= "\n" * string(intersection)
    end
    return str
end


function write_solution(schedule::Schedule, path::String)::Bool
    open(path, "w") do file
        write(file, string(schedule))
    end
    return true
end
