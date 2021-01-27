# nested subprograms

println("------------nestedsubprograms")

function outer(x)
    function inner()
        val + 2
    end

    val = x
    return inner()
end

println(outer(5))

# scope of local variables

println("\n------------scopeoflocalvariables")

function outer2()
    outerLocalVar = 5 # new local variable for outer2
    println("Outer function outer local variable: ",outerLocalVar)
    function inner2()
        innerLocalVar = 2 # new local variable for inner2
        println("Inner function inner local variable: ", innerLocalVar)
        println("Inner function outer local variable: ", outerLocalVar)
        outerLocalVar = 3 # change outer local
        println("Inner function outer local variable: ", outerLocalVar)
    end
    inner2()
    println("Outer function outer local variable: ",outerLocalVar)
    # error if code below is uncommented out of scope
    #println("Inner function local variable call from outer: ", innerLocalVar)
end

outer2()

# parameter passing methods

println("\n------------parameterpassingmethods")

function test(param1)
    param1 = 5
    println("In test function Param1 is ", param1)
end

param1 = 10
println("Param1 is ", param1)
test(param1)
println("After calling test, Param1 is ", param1)


# keyword and default parameters

println("\n------------keywordanddefaultparameters")

# keyword parameters

println("------------keyword")

function keyWord(;arg1,arg2)
    return arg1 + 2 * arg2
end

println("Keyword: ", keyWord(arg1=5,arg2=2))
println("Keyword reverse: ", keyWord(arg2=2, arg1=5))

# default parameters

println("------------default")

function defaultP(arg1,arg2)
    return arg1 + 2 * arg2
end

println("Default: ", defaultP(5,2))
println("Default reverse: ", defaultP(2,5))

# closures

println("\n------------closures")

function closureTest(x)
    return other -> x - other
end

println(closureTest(10)(5))