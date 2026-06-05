// Mechanical: Gear
// Simple spur gear

module gear(teeth=20, radius=20, thickness=5, pressure_angle=20) {
    tooth_height = radius * 0.2;
    tooth_width = (2 * PI * radius / teeth) * 0.6;

    difference() {
        union() {
            cylinder(r=radius, h=thickness, $fn=teeth*2);
            for (i = [0:teeth-1]) {
                rotate([0, 0, i * 360/teeth])
                translate([radius, 0, 0])
                    linear_extrude(thickness)
                        polygon([
                            [-tooth_width/2, 0],
                            [-tooth_width/4, tooth_height],
                            [ tooth_width/4, tooth_height],
                            [ tooth_width/2, 0]
                        ]);
            }
        }
        // Center hole
        cylinder(r=radius*0.2, h=thickness+1, center=true, $fn=32);
    }
}

gear(teeth=20, radius=20, thickness=5);
