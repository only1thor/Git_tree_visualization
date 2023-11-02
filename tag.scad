// Calculate the lengths of the sides
h = 20;
b = 30;
tag_length = 70;
a = sqrt(h^2 + ((b - h) / 2)^2);

// Define the points
points = [[0, 0], [b, 0], [a, h], [b - a, h]];

points2 = [[0, 0], [b, 0], [b, h-tag_length], [0, h-tag_length]];
// Create the trapezoid
polygon(points);
polygon(points2);
