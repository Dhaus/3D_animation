PShape deer;
int moveX, moveZ;
float angle;
void setup() {
 size(500,500,P3D); 
 deer = loadShape("deer-obj.obj");
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
  //translate(50, 50, 0);
  translate(moveX, 50, 0);
  scale(1,-1,1);
  shape(deer, 0, 0, deer.width , deer.height);
  //box(45);
  angle += PI/6;
  if (moveX > -100) {
    moveX -= 1;
    //moveZ -= 3;
  } else {
    moveX = 60;
    //moveZ = 0;
  }
}