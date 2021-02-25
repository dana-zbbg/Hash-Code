#rues et retourne les intersections pour lesquelles ces rues sont des sorties

function routes_intersections(streets, I)
    intersections_sorties = zeros(I)
    nombre_streets = length(streets)
    for s=1:nombre_streets
        intersections_sorties[streets[i].E] = 1
    end
    intersectionsSorties = Vector{Int}()
    for i=1:I
        if intersections_sorties[i] == 1
            push!(intersectionsSorties, i)
        end
    end
