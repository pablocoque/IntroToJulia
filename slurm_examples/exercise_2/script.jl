using Distributed
addprocs(Sys.CPU_THREADS-1; exeflags="--project=.")

@everywhere task() = myid()
futures = [@spawnat id task() for id in workers()]
outputs = fetch.(futures)
println(outputs)
