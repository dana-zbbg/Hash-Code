struct Schedule
    A::Int
    intersections::Vector{Intersection}

    Schedule(; A, intersections) = new(A, intersections)
end


struct Intersection
    i::Int
    E::Int
    lights::Vector{Light}

    Intersection(; i, E, lights) = new(i, E, lights)
end


struct Light
    street::String
    T::Int

    Light(; street, T) = new(street, T)
end
