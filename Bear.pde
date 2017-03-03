public class Bear {
  PShape bear;
  int moveX;
  public Bear() {
    bear = loadShape("bear-obj.obj");
    moveX = 60;
  }
  
  void display() {
    translate(moveX, 50, 0);
    scale(1,1,1);
    shape(bear, 0, 0, bear.width , bear.height); 
    if (moveX > -100) {
      moveX -= 1;
    } else {
      moveX = 60;
    }
  }
}