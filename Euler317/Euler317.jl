# A firecracker explodes at a height of 100 m above level ground. It breaks into a large number of very small fragments, which move in every direction; all of them have the same initial velocity of 20 m/s.
# We assume that the fragments move without air resistance, in a uniform gravitational field with g=9.81 m/s2.
# Find the volume (in m3) of the region through which the fragments move before reaching the ground. Give your answer rounded to four decimal places.
# We want to find the total volume encompassed by an arbitrarily large number of fragments by the time they fall to the ground.
# Let's just look at one half for the time being, as it will be symmetrical about the vertical axis

# Defining constants
u = 20 # Initial velocity
g = 9.81 # gravitational constant
h = 100 # Initial height

# The range formula. This covers the x-coordinates.
function d(u, θ)
    return ((u*cos(θ))/g)*(u*sin(θ)+sqrt(u^2*(sin(θ))^2 + 2g*y))
end 

# [20\cdot v\cos \left(u\right),\ 100+20v\sin \left(u\right)\ -9.81v^2]. This is a set of vectors that describe the position of the projectiles.
# This could be modelled by a parabola. 
# A flat throw from the maximum achievable height at the initial velocity would create an evelope curve, through which we can then get a solid of revolution.
# We proceed via the LaTeX document
using QuadGK

function envelope(q)
     return ((v^2)/(2*g)) - ((g*q^2)/(2v^2)) + h
end

function x(y)
    return sqrt((v^2/g)*(y - (v^2/(2*g))-h))
end

Euler317 = quadgk(x^2, 0, envelope(0), rtol=1e-4)
print(Euler317)