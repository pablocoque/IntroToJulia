module MyPackage

using Example
export greet, x

greet() = print("Hello World!")

x = domath(10)

end # module

end # module MyPackage
