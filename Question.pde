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
    textSize(128);
    textAlign(CENTER, CENTER);
    text(this.question, 100, 150, 1000, 300);
    fill(255);
    rect(100,550,175,175);
    fill(0);
    textSize(50);
    if(cAnswer.length()>5) textSize(40);
    text(this.cAnswer,100,550,175,175);
    fill(255);
    rect(375,550,175,175);
    fill(0);
    textSize(50);
    if(wAnswer1.length()>5) textSize(40);
    text(this.wAnswer1,375,550,175,175);
    fill(255);
    rect(650,550,175,175);
    fill(0);
    textSize(50);
    if(wAnswer2.length()>5) textSize(40);
    text(this.wAnswer2,650,550,175,175);
    fill(255);
    rect(925,550,175,175);
    fill(0);
    textSize(50);
    if(wAnswer3.length()>5) textSize(40);
    text(this.wAnswer3,925,550,175,175);
    textAlign(LEFT, TOP);
  }
}
