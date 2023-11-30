Radius = 20;
Tykkelse = 10;
Hull_storrelse = 8.5;
ID="H";
$fn = 50; // Set the number of faces for curves

Hull_radius = Hull_storrelse/2;

Avstand_fra_senter = 0;

module puck(){
	difference(){
		cylinder(h=Tykkelse, r = Radius, center = true);
		for( angle = [0:45:360]){
			rotate([90,0,angle])
			translate([0,0,Avstand_fra_senter])
			cylinder(h = Radius-Avstand_fra_senter, r1=Hull_radius-1,r2=Hull_radius);
	}
	}
	cylinder(h = Tykkelse, r = Hull_radius+2, center=true);
}


difference(){
	puck();
	//cylinder(h = Tykkelse+1, r = Hull_radius, center=true);
}

translate([0,0,6])
color("red")
linear_extrude(0.5)
text(ID,halign = "center", valign="center",size=30);