include("./11_DefiningTypes.jl")
include("./11_points.jl") 

r1 = Rectangle(D,B)
c1 = Circle(A,2)
r2 = Rectangle(K,I)
c2 = Circle(F,1)

g1 = group(c1,r1)
g2 = group(c2,r2)
allgroup = group(g1,g2)
