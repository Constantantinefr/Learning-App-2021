public class Question {
  public String question, answer, answer2, answer3, answer4;
  public Question_Button button1, button2, button3, button4;
  public boolean isanswered;
  public Question(String q, String a1, String a2, String a3, String a4, int num) {
    this.question = q;
    this.answer = a1;
    this.answer2 = a2;
    this.answer3 = a3;
    this.answer4 = a4;
    this.isanswered = false;
    button1 = new Question_Button(100, 550);
    button2 = new Question_Button(375, 550);
    button3 = new Question_Button(650, 550);
    button4 = new Question_Button(925, 550);
    if (num == 1) button1.a = true;
    else if (num == 2) button2.a = true;
    else if (num == 3) button3.a = true;
    else if (num == 4) button4.a = true;
  }
  public void checkAnswer() {
    button1.mouseReleased();
    button2.mouseReleased();
    button3.mouseReleased();
    button4.mouseReleased();
  }
  public void draw() {
    if (button1.answered == false && button2.answered == false && button3.answered == false && button4.answered == false) {
      fill(255);
      rect(100, 150, 1000, 300);
      fill(0);
      textSize(128);
      textAlign(CENTER, CENTER);
      text(this.question, 100, 150, 1000, 300);
      fill(255);
      rect(100, 550, 175, 175);
      fill(0);
      textSize(50);
      if (answer.length()>5) textSize(40);
      text(this.answer, 100, 550, 175, 175);
      fill(255);
      rect(375, 550, 175, 175);
      fill(0);
      textSize(50);
      if (answer2.length()>5) textSize(40);
      text(this.answer2, 375, 550, 175, 175);
      fill(255);
      rect(650, 550, 175, 175);
      fill(0);
      textSize(50);
      if (answer3.length()>5) textSize(40);
      text(this.answer3, 650, 550, 175, 175);
      fill(255);
      rect(925, 550, 175, 175);
      fill(0);
      textSize(50);
      if (answer4.length()>5) textSize(40);
      text(this.answer4, 925, 550, 175, 175);
      textAlign(LEFT, TOP);
    }
    if (button1.answered == true && button1.a == true) {
      fill(#00FF00);
        rect(button1.x, button1.y, button1.size, button1.size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("CORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
    }
     if (button2.answered == true && button2.a == true) {
      fill(#00FF00);
        rect(button2.x, button2.y, button2.size, button2.size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("CORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
    }
     if (button3.answered == true && button3.a == true) {
      fill(#00FF00);
        rect(button3.x, button3.y, button3.size, button3.size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("CORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
    }
     if (button4.answered == true && button4.a == true) {
      fill(#00FF00);
        rect(button4.x, button4.y, button4.size, button4.size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("CORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
    }
     if (button4.answered == true && button4.a == false) {
       fill(#FF0000);
        rect(button4.x, button4.y, button4.size, button4.size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("INCORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
    }
    if (button2.answered == true && button2.a == false) {
       fill(#FF0000);
        rect(button2.x, button2.y, button2.size, button2.size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("INCORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
    }
    if (button3.answered == true && button3.a == false) {
       fill(#FF0000);
        rect(button3.x, button3.y, button3.size, button3.size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("INCORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
    }
    if (button1.answered == true && button1.a == false) {
       fill(#FF0000);
        rect(button1.x, button1.y, button1.size, button1.size);
        rect(100, 150, 1000, 300);
        fill(255);
        textSize(128);
        textAlign(CENTER, CENTER);
        text("INCORRECT", 100, 150, 1000, 300);
        textAlign(LEFT, TOP);
    }
  }
}
