baseHeight = 2;
baseRadius = 18 / 2; // 9
baseCenterWidth = 12; // 18 + 14 = 32 total width
module base() {
  baseWidth = baseRadius * 2 + baseCenterWidth; // 32
  translate([baseRadius,0,0])
  hull() {
    linear_extrude(height = baseHeight)
      translate([baseCenterWidth,0,0]) circle(baseRadius);
    linear_extrude(height = baseHeight)
        circle(baseRadius);
  }
}
base();

module hook2d(){
  $fn=16;
  hookRadius = 2.0;
  // hook at top
  smallHookRadius = 1.25;
  hull() {
    translate([0,smallHookRadius,0])
      circle(smallHookRadius);
    translate([7 - smallHookRadius,1,0])
      circle(hookRadius);
  }
  hull() {
    translate([0,smallHookRadius,0])
      circle(smallHookRadius);
    translate([-7,-6,0])
      square([2,2]);
  }
  hull() {
    translate([-2,-6,0])
      square([2,2]);
    translate([-smallHookRadius + 2.25,-smallHookRadius+1.85,0])
      circle(smallHookRadius);
    translate([-smallHookRadius + 0.85,-smallHookRadius+2.25,0])
      circle(smallHookRadius);
    translate([-7,-6,0])
      square([2,4]);
  }
  hull() {
    translate([-smallHookRadius-1,-3.25,0])
      circle(smallHookRadius);
    translate([-2,-6,0])
      square([2,2]);
    translate([7,-6,0])
      square([2,2]);
  }
}
hookWidth = 5.5;
color("limegreen")
translate([baseCenterWidth + 1, 2.75, 8 - .5])
rotate([90,0,0])
  linear_extrude(height = hookWidth)
    hook2d();


