#######################################################################
# Implementation of simple DFS using Julia Language with keyboard input
# 
#######################################################################



# define a graph type usinf struct
struct Graph
  adj_list::Dict #adjacency list
end

function addEdge(g::Graph, u::Int, v::Int)
  if !hasKey(g.adj_list, u)
    g.adj_list[u = Set([v])
  else
    push!(g.adj_list[u],v)
  end
end
      
# define a DFS function to do traversal
function DFS(g::Graph, v::Int, visited::Set)
    # 1. mark the current node to visited node and print
    push!(visited, v)
    println(v)
    # 2. visit all the vertices adjacent to this vertex recursively
    for adjacent in g.adj_list[v]
        if !(adjacent in visited)
            DFS(g, adjacent, visited)
        end
    end
end

# define the main function -> takes graph input & calls functions
function main()
    # create an empty graph
    g = Graph(Dict())
    
    # read from keyboard input
    println("Enter the edges (u v):")
    while true
        line = readline()
        if line == ""
            break
        end
        u, v = map(i -> parse(Int, i), split(line))
        addEdge(g, u, v)
    end
                  
    # start DFS from node 1
    visited = Set()
    DFS(g, 1, visited)
end

# run main
main()
                  
