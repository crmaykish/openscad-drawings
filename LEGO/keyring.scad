WIDTH = 4;  // Width of lego brick in segments
LENGTH = 2; // Length of the lego brick in segments
T = 0.1;    // Tolerance: a higher tolerance gives a looser fit between bricks. A tolerance of 0 is a perfect copy, but doesn't work well with a 3D-printed brick.

u = 1.6;    // One LEGO unit = 1.6mm
function u(i) = i * u;  // Convert LEGO units to mm

if (WIDTH >= 2 && LENGTH >= 2){
    difference(){   // Remove the empty space from under the brick
        union(){    // Add the nubs to the top of the brick
            cube([u(WIDTH * 5), u(LENGTH * 5), u(2)]);  // Base brick
            for (i = [0 : WIDTH - 1]){
                for (j = [0 : LENGTH -1]){
                    translate([u(2.5 + (5 * i)), u(2.5 + (5 *j)), u(2)]){
                        cylinder(d=u(3), h=u(1), $fn=100);  // Nubs on top
                    }
                }
            }
        }
        translate([u(1 - T), u(1 - T), 0]){
            cube([u(5 * WIDTH - 2 + 2*T), u(5 * LENGTH - 2 + 2*T), u(1)]);   // Empty space under brick
        }
    }
    
    for (i = [0 : WIDTH - 2]){
        for (j = [0 : LENGTH -2]){
            translate([u(5 + 5*i), u(5 + 5*j), 0]){
                difference(){
                    cylinder(d=u(4.07), h=u(1), $fn=100);
                    cylinder(d=u(3), h=u(1), $fn=100);
                }
            }
        }
    }
    difference(){
        translate([0, u(5), 0]){
            difference(){
                cylinder(d=u(10), h=u(2), $fn=100);
                cylinder(d=u(7), h=u(2), $fn=100);
            }
        }
        cube([u(10), u(10), u(10)]);
    }
}