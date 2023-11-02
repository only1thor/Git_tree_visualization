Radius = 25;
Tykkelse = 10;


/*
difference(){
cylinder(h=Tykkelse, r = Radius, center = true);
translate([0,7-Radius,0])
	rotate([ -90, 0, 0])
		cylinder(h = 15, r1 = 4, r2 = 3.5, center = true);
	}
	
*/

difference(){
cylinder(h=Tykkelse, r = Radius, center = true);
rotate([90,0,45])
cylinder(h = Radius*2, r = 4,center = true);
rotate([90,0,90])
cylinder(h = Radius*2, r = 4,center = true);
rotate([90,0,0])
cylinder(h = Radius*2, r = 4,center = true);
rotate([90,0,-45])
cylinder(h = Radius*2, r = 4,center = true);
}
cylinder(h = Tykkelse, r = 4+1, center=true);