#######################################################################
# Implementation of simple BFS using Julia Language with keyboard input
################### TO-DO ###################
######### 1. Function Main reads input and calls other functions
######### 2. Take Keyboard input
######### 3. Function addEdge to make graph
######### 4. Function BFS to perform traversal
#######################################################################

# Define a Graph type to represent the graph
struct Graph
    adj_list::Dict
end

# define a function to add edges
function addEdge(g::Graph, u::Int, v::Int)
    if !haskey(g.adj_list, u)
        g.adj_list[u] = Set([v])
    else
        push!(g.adj_list[u], v)
    end
end

# define a BFS function for  traversal
function BFS(g::Graph, v::Int)
    # define a queue for BFS
    queue = [v]
    visited = Set()
    
    # current node is visited, print
    push!(visited, v)
    println(v)
    
    # process all the vertices in the queue
    while !isempty(queue)
        # get next vertex from queue
        v = shift!(queue)
        
        # visit all the vertices adjacent to this vertex
        for adjacent in g.adj_list[v]
            if !(adjacent in visited)
                # Current node is visited, print
                push!(visited, adjacent)
                println(adjacent)
                
                # add vertex to queue
                push!(queue, adjacent)
            end
        end
    end
end

# define main function which takes user input and calls functions
function main()
  
    # create null graph
    g = Graph(Dict())
    
    # read keyboard input
    println("Enter edges of the graph (u v):")
    while true
        line = readline()
        if line == ""
            break
        end
        u, v = map(x -> parse(Int, x), split(line))
        addEdge(g, u, v)
    end
    
    # perform BFS traversal starting from node 1
    BFS(g, 1)
end

# run main
main()
