public class Bear {
  PShape bear;
  float bearY, bearX;
  float sphereX, sphereY, sphereZ;
  float sphereX2, sphereY2, sphereZ2;
  float sphereX3, sphereY3, sphereZ3;
  float sphereX4, sphereY4, sphereZ4;
  float theta, theta2, theta3, theta4;

  boolean front, back;

  public Bear() {
    bear = loadShape("bear-obj.obj");
    bearY = 375;
    bearX = 250;
    theta = 0.0;
    sphereX = 250;
    sphereZ = -30;
    sphereX2  = 280;
    sphereZ2 = -40;
    sphereX3 = 275;
    sphereZ3 = -10;
    sphereX4 = 300;
    sphereZ4 = -25;
    front = true;
    back = false;
  }

  void display() {
    pushMatrix();
    translate(bearX, bearY, -75);
    rotateY(3*PI/2);
    scale(3.0, -3.0, 3.0);
    shape(bear, 0, 0, bear.width, bear.height);
    bearY -= 1;
    strokeWeight(1);
    translate(0, 5, 0);     
    for (int i = 0; i < 100; i++) {
      float y = lerp(0, 2, i/15.0) + 5;
      translate(-10, y, 0);
      line(-10, 0, 0, -10, y, -20);
    }
    if (bearY == -30) {
      bearY = 375;
    }
    popMatrix();
    particles();
  }

  void particles() {
    pushMatrix();
    translate(sphereX, sphereY, sphereZ);
    theta += 0.05;
    sphereX = (bearX - 20) + (cos(theta)*10);
    sphereY = (bearY + 12) + (sin(theta)*10);
    oscillate();
    sphere(3);
    popMatrix();

    pushMatrix();
    translate(sphereX2, sphereY2, sphereZ2);
    theta2 += 0.15;
    sphereX2 = (bearX + 40) + (cos(theta2)*10);
    sphereY2 = (bearY + 30) + (sin(theta2)*10);
    oscillate();
    sphere(3);
    popMatrix();

    pushMatrix();
    translate(sphereX3, sphereY3, sphereZ3);
    theta3 += 0.02;
    sphereX3 = (bearX + 60) + (cos(theta3)*10);
    sphereY3 = (bearY - 10) + (sin(theta3)*10);
    oscillate();
    sphere(3);
    popMatrix();

    pushMatrix();
    translate(sphereX4, sphereY4, sphereZ4);
    theta4 += 0.04;
    sphereX4 = (bearX - 15) + (cos(theta4)*10);
    sphereY4 = (bearY - 15) + (sin(theta4)*10);
    oscillate();
    sphere(3);
    popMatrix();
  }

  void oscillate() {
    if (front) {
      sphereZ--;
      if (sphereZ == -100) {
        front = false;
        back = true;
      }
    }
    if (back) {
      sphereZ++;
      if (sphereZ == -30) {
        front = true;
        back = false;
      }
    }
  }
}