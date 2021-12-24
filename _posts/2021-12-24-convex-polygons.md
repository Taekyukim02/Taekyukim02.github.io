---
layout: post
title: "Intersections of a line and a triangle"
category: fun math
use_math: true
---

I hope this short blog post can be one more addition to the growing pool of "the reasons to study mathematics."

I had the following realization the other day while showering: if you draw a (straight) line through a triangle, then the line crosses the triangle exactly once; it can never pass in and out of the triangle multiple times.

Why is this the case? What's so special about a triangle so that a line can't pass through it multiple times? 

To explain, let me define a special type of polygon, a convex polygon:

<div class="definition boxed">
(Convex Polygon). A polygon is convex if, for every two points in its interior, the line segment through them is contained in the polygon.
</div>

We give some examples of convex and non-convex polygons. 

<p align="center">
    <img width="450" src="/assets/convex-nonconvex.png">
    <br>
    <em>The blue line segment is entirely contained in polygon, and this is true for any two points in the left polygon, so it is convex. The red line segment peeks out of the polygon, so it is not convex.</em>
</p>

Note that any triangle is a convex polygon. Moreover, for any line that passes through a triangle, we can consider the earliest and latest points on the line that is inside the triangle. Then, the line segment between these two points must be contained in the triangle by convexity, so the line passes through the triangle exactly once. There's no chance that the line can pass in and out of the triangle more than once!

This is arguably a roundabout way to study a simple question about a line and a triangle, but the reasoning behind why a line can only cross the triangle once was not obvious! And now, we know that it's because any triangle is convex. Hence, the same single-intersection property holds for any other convex polygons including squares, rectangles, kites, and parallelograms.

We can generalize this problem.
<div class="boxed definition">
(Intersection). The intersection of two sets consists of all points contained in both sets.
</div>

For example, the intersection of two lines is the single point where they cross, and the intersection of a line and triangle is the line segment contained in the triangle.

<div class="boxed proposition">
The intersection of two convex polygons (or more generally, convex sets) is convex.
</div>

The proof is simple: for any two points in the intersection, those two points are also in the two convex sets. So, using the convexity of the given two sets, we find that the connecting line segment is in the two sets, hence also in the intersection. Thus, the intersection of the two sets is convex.

The new result means that any intersections of our favorite convex sets---(filled-in) triangles, squares, rectangles, circles, lines---will also be convex! This result is less obvious than the previous one: the result for two triangles seems tricky to prove without using properties of convex sets.

In summary, we took a very simple, intuitive problem and solved it using convex sets. While this seemed like a big hammer for a small problem, we were able to generalize our problem about a line and triangle to a result about any two convex sets. I hope that this was a helpful demonstration in how mathematics can not only supplement our intuition of simple phenomena, but lead us to greater insights about more challenging problems.
