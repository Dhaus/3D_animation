Deer the_deer;
float angle;
void setup() {
 size(500,500,P3D); 
 the_deer = new Deer();
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
}