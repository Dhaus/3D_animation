public class Deer {
  PShape deer;
  int moveX;
  public Deer() {
    deer = loadShape("deer-obj.obj");
    moveX = 60;
  }
  
  void display() {
    translate(moveX, 50, 0);
    scale(1,-1,1);
    shape(deer, 0, 0, deer.width , deer.height); 
    if (moveX > -100) {
      moveX -= 1;
    } else {
      moveX = 60;
    }
  }
}