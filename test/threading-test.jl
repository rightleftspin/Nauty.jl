using Graphs
using Nauty
using Test

function dowork()
   g = Graphs.barabasi_albert(63, 5)
   Nauty.baked_canonical_form(g).canong
end

fetch.([Threads.@spawn dowork() for _ in 1:1000])

@test true
