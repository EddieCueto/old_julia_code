abstract Shape

type Circle <: Shape
    x::Float64
    y::Float64
    radius::Float64
end


type Rectangle <: Shape
    t1::Tuple
    t2::Tuple
    #width::Float64 = abs(t2[1]-t1[1])
    #height::Float64 = abs(t2[2]-t2[2])
end


type ShapeGroup <: Shape
    members::Vector{Shape}
end

"Group shapes into a group, which can be treated as a shape itself"
function group(shapes::Shape...)
    ShapeGroup(collect(shapes))
end


"Get position of Circle"
getposition(c::Circle) = (c.x,c.y)


"Get position of Rectangle"
getposition(r::Rectangle) = r.t2


# Inform implementer of Shape subtypes of required functions
getposition(s::Shape) = error("You must implement for Shape")
setposition(s::Shape, x, y) = error("You must implement this function for Shape")

"Set absolute position of center of Circle"
function setposition(c::Circle,x,y) # If you cast the type on the function 
    c.x = x                         # you can only use that input type
    c.y = y                         # that is no type inference or conversion will be made
end

"Set absolute position upper left corner of Rectangle"
function setposition(r::Rectangle,x::Tuple)
    r.t2 = x                                           
    r.t1[1] = r.t1[1] + x[1]
    r.t1[2] = r.t1[2] + x[2]
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
function inside(r::Rectangle,x::Tuple)
    r.t1[1] <= x[1] <= r.t2[1] &&
    r.t1[2] <= x[2] <= r.t2[2]
end

"Check if point at `(x,y)` is inside one of the shapes in the group"
function inside(g::ShapeGroup,x,y)
    for m in g.members
        if string(typeof(m)) == "Rectangle"
            println(inside(m,(x,y)))
        elseif string(typeof(m)) == "Circle"
            println(inside(m,x,y))
        end
    end
end

"Check if point at `(x,y)` defined as a tuple is inside one of the shapes in the group"
function inside(g::ShapeGroup,x::Tuple)
    for m in g.members
        if string(typeof(m)) == "Rectangle"
            println(inside(m,x))
        elseif string(typeof(m)) == "Circle"
            println(inside(m,x...))
        end
    end
end

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
