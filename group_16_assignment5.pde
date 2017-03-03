Deer the_deer;
Benz the_benz;
float angle;
void setup() {
 size(500,500,P3D); 
 the_deer = new Deer();
 the_benz = new Benz();
}

void draw() {
  background(0);
  pointLight(255, 0, 255,0, 0, 100);
  pointLight(255, 0, 255,0, 0, -100);
  beginCamera();
  camera(0, 0, 100,0.0, 0.0, 0.0,0.0, 1.0, 0.0);
  //rotateX(angle);
  endCamera();
  the_deer.display();
  the_benz.display();
}