struct Street
    B::Int
    E::Int
    name::String
    L::Int
end


struct Path
    P::Int
    street_names::Vector{String}
end


struct Instance
    D::Int
    I::Int
    S::Int
    V::Int
    F::Int

    streets::Vector{Street}
    paths::Vector{Path}

    Instance(; D, I, S, V, F, streets, paths) =
        new(D, I, S, V, F, streets, paths)
end


function lire_instance(path::String)::Instance
    data = open(path) do file
        readlines(file)
    end

    dims = data[1]
    D = dims[1]
    I = dims[2]
    S = dims[3]
    V = dims[4]
    F = dims[5]
    streets = Vector{Street}()
    paths = Vector{Path}()

    for (i=2:S+1)
        street = data[i]
        B = street[1]
        E = street[2]
        name = street[3]
        L = street[4]
        push!(streets, Street(B=B, E=E, name=name, L=L))
    end

    for (i=S+2:S+V+1)
        path = data[i]
        P = path[1]
        street_names = Vector{String}()
        for (j=1:P)
            push!(street_names, path[1+j])
        end
        push!(paths, Path(P=P, street_names=street_names))
    end

    return Instance(D=D, I=I, S=S, V=V, F=F, streets=streets, paths=paths)
end
