Radius = 25;
Tykkelse = 10;

module puck(){
	difference(){
	cylinder(h=Tykkelse, r = Radius, center = true);
		for (angle = [-45, 0, 45, 90]) {
		   rotate([90,0,angle])
		   cylinder(h = Radius*2, r = 4,center = true);
		}
	}
	cylinder(h = Tykkelse, r = 4+1, center=true);
}


difference(){
	puck();
	cylinder(h = Tykkelse+1, r = 4, center=true);
}