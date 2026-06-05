// Fastener: Screw
// A simple metric screw model

module screw(diameter=3, length=20, head_diameter=6, head_height=3) {
    union() {
        // Head
        cylinder(d=head_diameter, h=head_height, $fn=32);
        // Slot on head
        translate([0, 0, head_height/2])
            cube([head_diameter+1, 0.8, head_height+0.1], center=true);
        // Shaft
        translate([0, 0, -length])
            cylinder(d=diameter, h=length, $fn=32);
    }
}

screw(diameter=3, length=20);
