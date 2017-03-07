Deer the_deer;
Bear the_bear;
Benz the_benz;
float angle;
void setup() {
 size(500,500,P3D); 
 the_deer = new Deer();
 the_bear = new Bear();
 the_benz = new Benz();
}

void draw() {
  background(212, 230, 241);
  directionalLight(200, 200, 200, 250, 250, 400);
  pointLight(25, 111, 61, 0, 0, -100);
  pushMatrix();
  translate(200,400,0);
  box(800, 50, 800);
  popMatrix();
  beginCamera();
  camera(width/2.0, 300, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  //rotateX(angle);
  endCamera();
  the_deer.display();
  the_bear.display();
  ufo();
  the_benz.display();
}

public void ufo() {
  pushMatrix();
  translate(250,-200,0);
  sphere(200);
  popMatrix();
}