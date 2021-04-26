public class Question_Button {
  private int x, y, size;
  boolean a, answered;
  public Question_Button(int x, int y) {
    this.x = x;
    this.y = y;
    this.size = 175;
    this.a = false;
    this.answered = false;
  }
  public void mouseClicked() {
    if (mouseX > x && mouseX < x+size && mouseY>y && mouseY< y+size) {
      if (!a) {
        fill(#FF0000);
        rect(x, y, size, size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("INCORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
      }
      if (a) {
        fill(#00FF00);
        rect(x, y, size, size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("CORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
      }
    }
  }
}
