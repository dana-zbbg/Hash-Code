struct Schedule
    A::Int  #nb intersections
    intersections::Vector{Intersection}

    Schedule(; A, intersections) = new(A, intersections)
end


struct Intersection
    i::Int  #id de l'intersection
    E::Int  #nb de routes qui vont vers cette intersection
    lights::Vector{Light}  #vecteur des routes et de leur duree de feu vert

    Intersection(; i, E, lights) = new(i, E, lights)
end


struct Light
    street::String  #nom de la route
    T::Int  #duree de son feu vert

    Light(; street, T) = new(street, T)
end
