difference(){
    hull(){
        cube([90,6,240]);
        translate([35,-20,0])
        cube([20,20,9*25.4]);
    }
    // access hole for mounting bolt 
    translate([45,0,210])
    rotate([90,0,0])
    cylinder(d=90,h=50,$fn=25);

    // mounting hole for screw
    translate([45,20,210])
    rotate([90,0,0])
    cylinder(d=6.05,h=50, $fn=30);
}


// fillets
rotate([0,0,-30])
rotate([45,0,0])
translate([0,1.2,1])cube([40,5,5]);
translate([55,-20,0])
rotate([0,0,30])
rotate([45,0,0])
translate([0,1.2,1])cube([40,5,5]);


// base plate
translate([-20,-30,0])
cube([130,40,5]);


