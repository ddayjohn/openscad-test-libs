// Electronic: Project enclosure box

module enclosure(width=100, depth=60, height=40, wall=2, 
                 lid_height=10) {
    difference() {
        // Outer box
        cube([width, depth, height]);
        // Inner cavity
        translate([wall, wall, wall])
            cube([width-wall*2, depth-wall*2, height]);
        // Lid slot
        translate([wall/2, wall/2, height-lid_height])
            cube([width-wall, depth-wall, lid_height+1]);
    }
    // Mounting posts
    for (x = [wall*2, width-wall*4])
        for (y = [wall*2, depth-wall*4])
            translate([x, y, wall])
                cylinder(d=wall*2, h=height-lid_height-wall, $fn=16);
}

enclosure();
