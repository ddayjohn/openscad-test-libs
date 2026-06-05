// Tools: Rounded box utility module

module rounded_box(size=[100,60,40], radius=5) {
    x = size[0]; y = size[1]; z = size[2];
    hull() {
        for (tx = [radius, x-radius])
            for (ty = [radius, y-radius])
                for (tz = [radius, z-radius])
                    translate([tx, ty, tz])
                        sphere(r=radius, $fn=24);
    }
}

rounded_box(size=[80, 50, 30], radius=6);
