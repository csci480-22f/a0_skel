module WWURaster

using LinearAlgebra
using StaticArrays
using Images
using FileIO

# some helpful type aliases:
const Vec3 = SVector{3, Float64} # 3-vector of floats
const Vec2 = SVector{2, Float64} # 2-vector of floats

export Vec2, Vec3, hello_vec3, line_side, point_in_triangle, draw_tri

""" hello_vec3(a, b, c)
Create a Vec3 containing numbers a, b, and c and print 'Hello, [the vector] """
function hello_vec3(a, b, c)
    print("Hello, ")
    println(Vec3(a, b, c))
end

""" line_side(v1, v2, p)
Determine which side of the line from v1 to v2 p lies on.
Return a negative value if it's on the right, zero if it's on the line,
and a positive value if it's on the left."""
function line_side(v1, v2, p)
    # TODO 1
end

""" point_in_trinagle(v1, v2, v3, p)
Return true if p lies in the triangle [v1, v2, v3], false otherwise.
Pre: v1, v2, v3 are the vertices of a triangle in counter-clockwise order."""
function point_in_triangle(v1, v2, v3, p)
    # TODO 2
end

""" draw_tri(v1, v2, v3, color, img)
Assign color to all pixels inside the triangle with vertices
[v1, v2, v3] in img. Vertices are specified in an xy coordinate system
with (0,0) at the bottom left corner of the image."""
function draw_tri(v1, v2, v3, color, img)
    # TODO 3
end

""" artifact()
Save a PNG file called artifact.png containing a cool image made by drawing
triangles."""
function artifact()
    # You can use this function to write the code to produce your artifact. It
    # does not need to be done by the code deadline.
end


### Methods for testing - feel free to use these and add your own! ###

""" test_tri(ch, cw, a, b, c, color)
return a new image with size ch x cw with triangle abc filled with color """
function test_tri(ch, cw, a, b, c, color)
    canv = zeros(RGB{Float32}, ch, cw)

    draw_tri(a, b, c, color, canv)
    canv
end

""" test10_tri()
Draw a canonical test triangle. The output should match the one shown in the
writeup."""
function test10_tri()
    a = Vec2(10, 10)
    b = Vec2(30, 10)
    c = Vec2(5, 40)
    color = RGB{Float32}(0.7, 0.7, 0.7)
    img = test_tri(50, 50, a, b, c, color)

    save("test10.png", img)
end

end # module
