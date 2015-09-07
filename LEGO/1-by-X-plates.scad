/*
Create standard height 1-by LEGO bricks suitable for 3D printing and use with official LEGO bricks.

Set the WIDTH to the desired size and adjust the tolerance to your printer.
*/

WIDTH = 2;  // Width of lego brick in segments
T = 0.1;    // Tolerance: a higher tolerance gives a looser fit between bricks. A tolerance of 0 is a perfect copy, but doesn't work well with a 3D-printed brick.

u = 1.6;    // One LEGO unit = 1.6mm
function u(i) = i * u;  // Convert LEGO units to mm

if (WIDTH > 0){
    difference(){   // Remove the empty space from under the brick
        union(){    // Add the nubs to the top of the brick
            cube([u(WIDTH * 5), u(5), u(2)]);  // Base brick
            for (i = [0 : WIDTH - 1]){
                translate([u(2.5 + (5 * i)), u(2.5), u(2)]){
                    cylinder(d=u(3), h=u(1), $fn=100);  // Nubs on top
                }
            }
        }
        translate([u(1 - T), u(1 - T), 0]){
            cube([u(5 * WIDTH - 2 + 2*T), u(3 + 2*T), u(1)]);   // Empty space under brick
        }
    }

    if (WIDTH >= 2){
        for (i = [0 : WIDTH - 2]){
            translate([u(5 + (5 * i)), u(2.5), 0]){
                difference(){
                    cylinder(d=u(2), h=u(1), $fn=100);    // Create the inside nub
                    cylinder(d=u(1.5), h=u(1), $fn=100);  // Hollow it out
                }
            }
        }
    }
}