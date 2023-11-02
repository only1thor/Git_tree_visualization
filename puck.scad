Radius = 20;


cylinder(h=5, r = Radius, center = true);
translate([0,-Radius,0])
	rotate([ -90, 0, 0])
		cylinder(h = 8, r1 = 5, r2 = 2.5, center = true);