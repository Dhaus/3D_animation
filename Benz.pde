public class Benz {
  PShape benz;
  int moveX;
  public Benz() {
    benz = loadShape("Benz.obj");
    moveX = 60;
  }
  
  void display() {
    translate(moveX, 50, 0);
    scale(.5,.5,.5);
    shape(benz, 0, 0, benz.width , benz.height); 
    if (moveX > -100) {
      moveX -= 1;
    } else {
      moveX = 60;
    }
  }
}