public class Deer {
  PShape deer;
  int moveX;
  int poopY;
  public Deer() {
    deer = loadShape("deer-obj.obj");
    moveX = 500;
    poopY = 365;
  }
  
  void display() {
    pushMatrix();
    translate(moveX, 375, 0);
    scale(2.0, -2.0, 2.0);
    shape(deer, 0, 0, deer.width , deer.height);
    if (moveX < 0) {
      moveX = 500;
    }
    moveX -= 3;
    popMatrix();
    pushMatrix();
    poop();
    popMatrix();
  }
  
  void poop() {
    translate(moveX + 18, poopY - 5, 0);
    //translate(400, 375,0);
    sphere(3);
    poopY += 1;
    if (poopY == 400) {
      poopY = 365;
    }
  }
}