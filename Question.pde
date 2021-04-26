public class Question {
  private String question, answer, answer2, answer3, answer4;
  private Question_Button button1, button2, button3, button4;
  public Question(String q, String a1, String a2, String a3, String a4, int num) {
    this.question = q;
    this.answer = a1;
    this.answer2 = a2;
    this.answer3 = a3;
    this.answer4 = a4;
    button1 = new Question_Button(100,550);
    button2 = new Question_Button(375,550);
    button3 = new Question_Button(650,550);
    button4 = new Question_Button(925,550);
    if (num == 1) button1.a = true;
    else if (num == 2) button2.a = true;
    else if (num == 3) button3.a = true;
    else if (num == 4) button4.a = true;
  }
  public void checkAnswer() {
   button1.mouseClicked();
   button2.mouseClicked();
   button3.mouseClicked();
   button4.mouseClicked();
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
    if(answer.length()>5) textSize(40);
    text(this.answer,100,550,175,175);
    fill(255);
    rect(375,550,175,175);
    fill(0);
    textSize(50);
    if(answer2.length()>5) textSize(40);
    text(this.answer2,375,550,175,175);
    fill(255);
    rect(650,550,175,175);
    fill(0);
    textSize(50);
    if(answer3.length()>5) textSize(40);
    text(this.answer3,650,550,175,175);
    fill(255);
    rect(925,550,175,175);
    fill(0);
    textSize(50);
    if(answer4.length()>5) textSize(40);
    text(this.answer4,925,550,175,175);
    textAlign(LEFT, TOP);
  }
}
