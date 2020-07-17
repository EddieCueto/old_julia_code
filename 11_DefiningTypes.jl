abstract type Shape end

type Circle <: Shape
    x::Float64
    y::Float64
    radius::Float64
end


type Rectangle <: Shape
    x::Float64
    y::Float64
    width::Float64
    height::Float64
end


type ShapeGroup <: Shape
    members::Vector{Shape}
end


typealias Point Union{Tuple{Float64,Float64}, Tuple{Int64,Int64}}

"Create circle from point and radius"
function Circle(p::Point,radius)
    px,py = p
    Circle(px,py,radius)
end


"Create rectangle from to points `p` at the top left corner and `q` at the lower right corner"
function Rectangle(p::Point,q::Point)
    px,py = p
    qx,qy = q
    w = qx - px
    h = qy - py
    Rectangle(px,py,w,h)
end


"Group shapes into a group, which can be treated as a shape itself"
function group(shapes::Shape...)
    ShapeGroup(collect(shapes))
end


"Get position of Circle"
getposition(c::Circle) = (c.x,c.y)


"Get position of Rectangle"
getposition(r::Rectangle) = (r.x,r.y)


# Inform implementer of Shape subtypes of required functions
getposition(s::Shape) = error("You must implement for Shape")
setposition(s::Shape, x, y) = error("You must implement this function for Shape")


"Set absolute position of center of Circle"
function setposition(c::Circle,x,y) # If you cast the type on the function 
    c.x = x                         # you can only use that input type
    c.y = y                         # that is no type inference or conversion will be made
end


"Set absolute position upper left corner of Rectangle"
function setposition(r::Rectangle,x,y)
    r.x = x
    r.y = y 
end


"Move Shape by `dx` units along the x-axis and `dy` units across the y-axis"
function move(s::Shape,dx,dy)
    x,y = getposition(s)
    setposition(s,x+dx,y+dy)
end


"Check if point at `(x,y)` is inside circle"
function inside(c::Circle,x,y)
    dx = x - c.x
    dy = y - c.y
    hypot(dx,dy) <= c.radius
end


"Check if point at `(x,y)` is inside rectangle"
function inside(r::Rectangle,x,y)
    r.x <= x <= r.x + r.width &&
    r.y <= y <= r.y + r.height
end

inside(s::Shape,p::Point) = inside(s,p...)


"Check if point at `(x,y)` is inside one of the shapes in the group"
function inside(g::ShapeGroup,x,y)
    for m in g.members
        if inside(m,x,y)
            return true 
        end
    end
    false
end

# Inform implementer of Shape subtypes of required functions
inside(s::Shape,x,y) = error("You have to implement inside for Shape")

# TESTING CODE

#c = Circle(2,3,5)

#println(c)

#println(c.x) # Accessing type objects using the dot notation is not good practice
#println(c.y) # it is preferable to encapsulate using accessor functions
#println(c.radius)

#x,y = getposition(c)

#println(x)
#println(y)

#setposition(c,20.0,30.0)

#println(c)
