public class Question {
  private String question, cAnswer, wAnswer1, wAnswer2, wAnswer3;
  public Question(String q, String ca, String wa1, String wa2, String wa3) {
    this.question = q;
    this.cAnswer = ca;
    this.wAnswer1 = wa1;
    this.wAnswer2 = wa2;
    this.wAnswer3 = wa3;
  }
  public void draw() {
    fill(255);
    rect(100,150,1000,300);
    fill(0);
    textSize(64);
    text(this.question, 500, 225, 1100, 450);
    fill(255);
    rect(100,550,175,175);
    fill(255);
    rect(375,550,175,175);
    fill(255);
    rect(650,550,175,175);
    fill(255);
    rect(925,550,175,175);
  }
}
