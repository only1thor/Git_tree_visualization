Radius = 20;
Tykkelse = 12;
Hull_storrelse = 5;
ID="H";
$fn = 100; // Set the number of faces for curves

Avstand_fra_senter = 0;

module puck(){
	difference(){
		cylinder(h=Tykkelse, r = Radius, center = true);
		for( angle = [0:45:360]){
			rotate([90,0,angle])
			translate([0,0,Avstand_fra_senter])
			cylinder(h = Radius-Avstand_fra_senter, r1=Hull_storrelse-1,r2=Hull_storrelse);
	}
	}
	cylinder(h = Tykkelse, r = Hull_storrelse+2, center=true);
}


difference(){
	puck();
	//cylinder(h = Tykkelse+1, r = Hull_storrelse, center=true);
}

translate([0,0,6])
color("red")
linear_extrude(1)
text(ID,halign = "center", valign="center",size=30);