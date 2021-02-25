struct Street
    B::Int  #id intersection begin
    E::Int  #id intersection end
    name::String  #nom de la rue
    L::Int  #longueur (temps)

    Street(; B, E, name, L) = new(B, E, name, L)
end


struct Path
    P::Int  #nb streets
    street_names::Vector{String}  #street names

    Path(; P, street_names) = new(P, street_names)
end


struct Instance
    D::Int  #duree simulation
    I::Int  #nb intersection
    S::Int  #nb streets
    V::Int  #nb cars
    F::Int  #nb bonus points for cars reaching their destination

    streets::Vector{Street}
    paths::Vector{Path}

    Instance(; D, I, S, V, F, streets, paths) =
        new(D, I, S, V, F, streets, paths)
end


function lire_instance(path::String)::Instance
    data = open(path) do file
        readlines(file)
    end

    dims = split(data[1], " ")
    D = parse(Int, dims[1])
    I = parse(Int, dims[2])
    S = parse(Int, dims[3])
    V = parse(Int, dims[4])
    F = parse(Int, dims[5])
    streets = Vector{Street}()
    paths = Vector{Path}()

    for i=2:S+1
        street = split(data[i], " ")
        B = parse(Int, street[1])
        E = parse(Int, street[2])
        name = street[3]
        L = parse(Int, street[4])
        push!(streets, Street(B=B, E=E, name=name, L=L))
    end

    for i=S+2:S+V+1
        path = split(data[i], " ")
        P = parse(Int, path[1])
        street_names = Vector{String}()
        for j=1:P
            push!(street_names, path[1+j])
        end
        push!(paths, Path(P=P, street_names=street_names))
    end

    return Instance(D=D, I=I, S=S, V=V, F=F, streets=streets, paths=paths)
end
