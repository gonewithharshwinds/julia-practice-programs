# simple interest calculator
# author : gonewithharshwinds

function interest(p,n,r)
    return(p*n*r)
end

println("Principle amount?")
p = parse(Int, readline())
println("Number of years?")
n = parse(Int, readline())
println("Rate of Interest?")
r = parse(Int, readline())
println("Simple Interest: ", Interest(p,n,r))
