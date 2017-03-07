public class Benz {
  PShape benz;
  int moveX;
  int moveZ;
  int size = 1;
  int exhaustY = 365;
  public Benz() {
    benz = loadShape("Benz.obj");
    moveX = -120;
    moveZ = 450;
  }

  void display() {
    pushMatrix();
    translate(moveX, 365, moveZ);
    rotateY(5*PI/4);
    directionalLight(200, 200, 200, moveX+50, 365, moveZ-50);
    scale(1, -1, 1);
    shape(benz, 0, 0, benz.width, benz.height); 
    moveX += 10;
    moveZ -= 10;
    popMatrix();
    pushMatrix();
    exhaust();
    popMatrix();
    pushMatrix();
    exhaust2();
    popMatrix();
    if (moveX > 900) {
      moveX = -120;
      moveZ = 450;
    }
    if (size == 4) {
      size = 0;
    }
    size +=1;
  }
  void exhaust() {
    translate(moveX - 110, exhaustY, moveZ + 10);
    sphere(size);
    if (exhaustY > 300) {
      exhaustY = 365;
    }
    exhaustY --;
  }
  void exhaust2() {
    translate(moveX - 80, exhaustY, moveZ + 50);
    sphere(size);
    if (exhaustY > 300) {
      exhaustY = 365;
    }
    exhaustY --;
  }
}