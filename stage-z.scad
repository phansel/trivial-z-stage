
height = 11.5;
module wedge(){
    linear_extrude(20)
    polygon([[0,0],[80,0],[0,height]]);
}

module stage(){
    leng=20;
    color("red")
    difference(){
        
        translate([0,0,-7.5])
        linear_extrude(35)
        polygon([[0,height],[0,height+1],[leng,height+1],[leng,height*(80-leng)/80]]);
        
        rscale = 1.09;
        translate([2,0,-5.05])
        scale([rscale,rscale,rscale])rail();
        translate([15,0,-5.05])
        scale([rscale,rscale,rscale])rail();
        translate([2,0,23])
        scale([rscale,rscale,rscale])rail();
        translate([15,0,23])
        scale([rscale,rscale,rscale])rail();
    }
}

module rail(){
    color("black")
    cube([2,15,2.05]);
    
}

module base() {
    color("yellow")
    difference(){
        translate([-10,0,-7.5])
        cube([40,4,35]);
        translate([-12,2,-2])
        cube([60,3,23]);

        translate([2,-2,-5.05])
        rail();
        translate([15,-2,-5.05])
        rail();
        translate([2,-2,23])
        rail();
        translate([15,-2,23])
        rail();
    }
}

// base();

// rail();

// translate([0,2,0])
// stage();
// translate([0,2,0])
// wedge();