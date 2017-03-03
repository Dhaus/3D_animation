Deer the_deer;
int moveX, moveZ;
float angle;
void setup() {
 size(500,500,P3D); 
 the_deer = new Deer();
 frameRate(20);
 moveX = 60;
 moveZ = 100;
 angle = 0;
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
  angle += PI/6;
  if (moveX > -100) {
    moveX -= 1;
    //moveZ -= 3;
  } else {
    moveX = 60;
    //moveZ = 0;
  }
}