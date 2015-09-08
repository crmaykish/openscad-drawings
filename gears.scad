diameter = 60;

//difference(){
//cylinder(h=5, d=diameter);
//cylinder (h=5, d = 5, $fn=50);
//}
//
//teeth = 18;
//
//for (i = [0 : teeth-1]){
//	rotate(i * 360 / teeth, [0, 0, 1])
//	translate([diameter/2 - .5, -2.5, 0])
//	cube(5);
//}


	teeth = 10;

	difference(){
		cylinder(h=5, d=30);
		cylinder (h=5, d = 5, $fn=50);
	}
	for (i = [0 : teeth-1]){
		rotate(i * 360 / teeth, [0, 0, 1])
		translate([30/2 - .5, -2.5, 0])
		cube(5);
	}

translate([50,0,0]){
	teeth = 10;

	difference(){
		cylinder(h=5, d=30);
		cylinder (h=5, d = 5, $fn=50);
	}
	for (i = [0 : teeth-1]){
		rotate(i * 360 / teeth, [0, 0, 1])
		translate([30/2 - .5, -2.5, 0])
		cube(5);
	}
}

translate([50,50,0]){
	teeth = 10;

	difference(){
		cylinder(h=5, d=30);
		cylinder (h=5, d = 5, $fn=50);
	}
	for (i = [0 : teeth-1]){
		rotate(i * 360 / teeth, [0, 0, 1])
		translate([30/2 - .5, -2.5, 0])
		cube(5);
	}
}

translate([0,50,0]){
	teeth = 10;

	difference(){
		cylinder(h=5, d=30);
		cylinder (h=5, d = 5, $fn=50);
	}
	for (i = [0 : teeth-1]){
		rotate(i * 360 / teeth, [0, 0, 1])
		translate([30/2 - .5, -2.5, 0])
		cube(5);
	}
}