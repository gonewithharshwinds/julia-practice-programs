# greatest number among 3
# author : gonewithharshwinds

function comparing(a,b,c)
    if a>b
        if a>c
            return a
        else
            return c
        end
    elseif a<b
        if b>c
            return b
        else
            return c
        end
    end
end

println("First Number?")
a = parse(Int, readline())
println("Second Number?")
b = parse(Int, readline())
println("Third Number?")
c = parse(Int, readline())
println("Greatest among 3 is:", comparing(a,b,c))