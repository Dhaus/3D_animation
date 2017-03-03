public class Deer {
  PShape deer;
  public Deer() {
    deer = loadShape("deer-obj.obj");
  }
  
  void display() {
    translate(moveX, 50, 0);
    scale(1,-1,1);
    shape(deer, 0, 0, deer.width , deer.height);    
  }
}