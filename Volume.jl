module Volume

export sphere_volume, cylinder_volume

"Volume of sphere with radius `r`"
sphere_volume(r) = (4/3)*π*r^3

"Volume of cylinder with radius `r` and height `h`"
cylinder_volume(r,h) = circle_area(r)*h

"Area of circle with radius `r`"
circle_area(r) = π*r^2

"Surface area of a cylinder of height `h` and radius `r`"
cylinder_area(r,h) = 2*circle_area(r) + 2*π*r*h

"Area of a triangle"
trianle_area(b,h) = b*h/2

"Rectangle area"
rectangle_area(h,w) = h*w

end
