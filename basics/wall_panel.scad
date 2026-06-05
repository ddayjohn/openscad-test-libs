// Architectural: Wall panel with door cutout

module wall_panel(width=200, height=250, thickness=15, 
                  door_width=80, door_height=200) {
    difference() {
        cube([width, thickness, height]);
        // Door cutout
        translate([(width-door_width)/2, -1, 0])
            cube([door_width, thickness+2, door_height]);
    }
}

wall_panel();
