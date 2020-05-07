abstract Shape

type Circle <: Shape
    x::Float64
    y::Float64
    radius::Float64
end

getposition(c::Circle) = (c.x,c.y)

function setposition(c::Circle,x,y)
    c.x = x
    c.y = y
end


type Rectangle <: Shape
    x:: Float64
    y::Float64
    width::Float64
    height::Float64
end


type ShapeGroup <: Shape
    members::Vector{Shape}
end

function group(shapes::Shape...)
    ShapeGroup(collect(shapes))
end
