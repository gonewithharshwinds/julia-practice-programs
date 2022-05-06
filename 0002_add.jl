# sum of two numbers
# author : gonewithharshwinds

function sum(a,b)
    return (a+b)
end

println("First Number?")
a = parse(Int, readline())
println("Second Number?")
b = parse(Int, readline())
println("Sum is :", sum(a,b))