# Celsius and fahrenheit conversions
# author: gonewithharshwinds

function tofahrenheit(c,f)
    f = (c*1.8)+32
    return f
end

function tocelsius(c,f)
    c = (f-32)/1.8
    return c
end

println("to Celsius enter : 1, to fahrenheit enter : 2 -")
flag = parse(Int, readline())
if flag == 1
    println("Input : Celsius")
    c = parse(Int, readline())
    println("From Celsius to fahrenheit:",tofahrenheit(c,f))
elseif flag == 2
    println("Input : fahrenheit")
    c = parse(Int, readline())
    println("From fahrenheit to Celsius:",tocelsius(c,f))
else
    println("Error, bye!")
end