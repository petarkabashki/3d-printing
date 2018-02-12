$fn = 24;


//rotate([60,0,0])
//rotate([0,90,0])  stick3();



difference() {
  difference() {
    union() {
      color("green") cylinder(r=6,h=4);
      translate([0,0,-10]) rotate([0,-90,0]) stick3();
    }
    //middle hole
    color("red") translate([0,0,-1]) cylinder(d=4,h=10);
  }
  //outer holes
  color("red") union(){
    for(i=[0:2]) {
      rotate([0,0,120*i]) 
      translate([-6,0,-1]) cylinder(d=4,h=10);
    }
  }  
}



//corner fitting
translate([-80,0,0]) 
difference() {
  color("red") translate([0,0,-7]) cylinder(r=10,h=18);
    
  union() rotate([0,-36,0]) {
    rotate([60,-(180-58.3),0]) stick3();
    rotate([0,0,-54]) {
      rotate([-30,0,0]) stick3();
      rotate([-90,0,108]) stick3();
    }
  }
}

module stick3() {
  translate([5,0,0])
  rotate([0,90,0])
  for(i=[0:2]) {
    rotate([0,0,120*i]) translate([5,0,0]) cylinder(h=400, d=3);
  }
}