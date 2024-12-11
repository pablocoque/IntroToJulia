using Base.Threads
a = zeros(Int, 2*nthreads())
@threads for i in eachindex(a)
    a[i] = threadid()
end
println(a)
