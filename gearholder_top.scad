for (i = [0:3]){
	rotate(90*i, [0,0,1]){
		translate([-5,-5,0]){
			translate([5,0,0]){
				cube([51.8, 10, 3]);
			}
			translate([5,5,0]){
				cylinder(h=3, d=10, $fn=50);
				translate([51.8,0,0]){
					cylinder(h=3, d=10, $fn=50);
				}
			}
			translate([5,5,3]){
				difference(){
					cylinder(d=7, h=3, $fn=50);
					cylinder(d=3.8, h=6, $fn=50);
				}
				translate([51.8,0,0]){
					difference(){
						cylinder(d=7, h=3, $fn=50);
						cylinder(d=3.8, h=6, $fn=50);
					}
				}
			}
		}
	}
}