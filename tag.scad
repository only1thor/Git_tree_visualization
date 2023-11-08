// Calculate the lengths of the sides
tag_width = 20;
tag_length = 55;
tag_thickness=10;
hole_size = 8.5;

$fn=300;
hole_radius = hole_size/2;
h = 15;
a = sqrt(h^2 + ((tag_width - h) / 2)^2);

// Define the points
points = [[0, 0], [tag_width, 0], [a, h], [tag_width - a, h]];

points2 = [[0, 0], [tag_width, 0], [tag_width, h-tag_length], [0, h-tag_length]];
// Create the trapezoid
module tag(text) {
	linear_extrude(tag_thickness)
		polygon(points);
	linear_extrude(tag_thickness)
		polygon(points2);
		rotate([0,0,-90])
			translate([0,(tag_width-10)/2,tag_thickness])
				linear_extrude(1)
				text(text,size = 10);
}

difference(){
	tag("HEAD");
	translate([(tag_width/2),0,tag_thickness/2])
	rotate([0,90,90])
	cylinder(h=a,r1=hole_radius-0.25,r2=hole_radius);
}