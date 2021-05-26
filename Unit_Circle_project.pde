PImage img;
boolean mode = true;
String l = "LEARN MODE";
String q = "QUIZ MODE";
ArrayList<Learn_Button> lbs;
ArrayList<Question> qus;
int i = 0;
public static int score = 0;
public int highscore = 0;

public void setup() {
  size (1200, 800);

  img = loadImage("UnitBlank.png");
  qus = new ArrayList<Question>();
  qus.add(new Question("0°", "(1,0)", "(0,1)", "(1,1)", "(√2/2, √2/2)", 1));
  qus.add(new Question("90°", "3/2 π", "2π", "1/2 π", "1/3 π", 3));
  qus.add(new Question("5/6 π", "135°", "270°", "300°", "150°", 4));
  qus.add(new Question("2 π", "(0,0)", "(1,2)", "(1,0)", "(-1,0)", 3));
  qus.add(new Question("(√3/2, 1/2)", "2π", "1/6 π", "1/3 π", "1.4 π", 2));
  qus.add(new Question("180°", "(-1,0)", "(1,0)", "(0,1)", "(0,-1)", 1));
  qus.add(new Question("90°", "(0,0)", "(1,0)", "(0,1)", "(1,1)", 3));
  qus.add(new Question("(0, -1)", "1/2 π", "3/2 π", "3/4 π", "2/3 π", 2));
  qus.add(new Question("3/2 π", "120°", "240°", "90°", "270°", 4));
  qus.add(new Question("300°", "(-√3/2,1/2)", "(-1/2, -√3/2)", "(1/2, -√3/2)", "(√3/2, -1/2)", 3));
  qus.add(new Question("(-1/2, √3/2)", "2/3 π", "1/3 π", "5/6π", "2π", 1));
  qus.add(new Question("π", "(-1,0)", "(1,0)", "(0,1)", "(0,-1)", 1));
  qus.add(new Question("180°", "2π", "1/2 π", "0", "π", 4));
  qus.add(new Question("270°", "(0,-1)", "(1,0)", "(-1,0)", "(0,1)", 1));
  qus.add(new Question("(-√3/2, -1/2)", "300°", "210° ", "45° ", "330° ", 2));
  qus.add(new Question("135°", "(-√2/2, -√2/2)", "(√3/2, 1/2)", "(-√2/2, √2/2)", "(-√3/2, 1/2)", 3));
  qus.add(new Question("(-√3/2, -1/2)", "7/6 π", "4/3 π", "-1/3π", "5/6 π", 1));
  qus.add(new Question("4/3 π", "240°", "210°", "300°", "330°", 1));
  qus.add(new Question("60°", "1/3 π", " 4/3 π", "5/3 π", "2/3π", 1));
  qus.add(new Question("(1,0)", "1/2 π", "0", "π", "3π/4", 2));
  qus.add(new Question("7/6 π", "120°", "315°", "210°", "150°", 3));
  qus.add(new Question("240°", "(1/2, √3/2)", "(1/2, √2/2)", "(-1/2, -√3/2)", "(-√3/2, -1/2)", 3));
  qus.add(new Question("(-√2/2, √2/2)", "-45°", "120°", "225°", "135°", 4));
  qus.add(new Question("225°", "5/4 π", "7/4 π", "3/4 π", "1/4 π", 1));
  qus.add(new Question("11/6 π", "(√3/2, 1/2)", "(1/2, -√3/2)", "(√3/2, -1/2)", "(√2/2, -√2/2)", 3));
  qus.add(new Question("(√3/2, 1/2)", "30°", "60°", "45°", "100°", 2));
  qus.add(new Question("360°", "(0,0)", "(0,1)", "(-1,0)", "(1,0)", 4));
  qus.add(new Question("π/6", "30°", "45°", "330°", "120°", 1));
  qus.add(new Question("120°", "1/3 π", "4/3 π", "5/3 π", "2/3 π", 4));
  qus.add(new Question("4/3 π", "(1/2, √3/2)", "(√3/2, -1/2)", "(-1/2, -√3/2)", "(1,1)", 3));
  qus.add(new Question("(√2/2, -√2/2)", "3/4 π", "7/6 π", "7/4 π", "7/3 π", 3));


  //√  °  π

  lbs = new ArrayList<Learn_Button>();
  lbs.add(new Learn_Button("330°", "11/6 π", "(√3/2, -1/2)", 836, 488));
  lbs.add(new Learn_Button("315°", "7/4 π", "(√2/2, -√2/2)", 762, 564)); 
  lbs.add(new Learn_Button("300°", "5/3 π", "(1/2, -√3/2)", 694, 610));
  lbs.add(new Learn_Button("270°", "3/2 π", "(0, -1)", 558, 645));
  lbs.add(new Learn_Button("240°", "4/3 π", "(-1/2, -√3/2)", 451, 615)); 
  lbs.add(new Learn_Button("225°", "5/4 π", "(-√2/2, -√2/2)", 378, 568));
  lbs.add(new Learn_Button("210°", "7/6 π", "(-√3/2, -1/2)", 331, 496));
  lbs.add(new Learn_Button("0°", "0 or 2π", "(1,0)", 890, 375));
  lbs.add(new Learn_Button("30°", "1/6 π", "(√3/2, 1/2)", 801, 264));
  lbs.add(new Learn_Button("45°", "1/4 π", "(√2/2, √2/2)", 779, 185));
  lbs.add(new Learn_Button("60°", "1/3 π", "(1/2, √3/2)", 709, 117));
  lbs.add(new Learn_Button("90°", "1/2 π", "(0, 1)", 567, 87));
  lbs.add(new Learn_Button("120°", "2/3 π", "(-1/2, √3/2)", 431, 123));
  lbs.add(new Learn_Button("150°", "5/6 π", "(-√3/2, 1/2)", 313, 253));
  lbs.add(new Learn_Button("135°", "3/4 π", "(-√2/2, √2/2)", 359, 183));
  lbs.add(new Learn_Button("180°", "π", "(-1, 0)", 245, 375));
  i = (int)(Math.random() * qus.size());
}

public void draw() {
  background(255);
  if (mode) {
    noStroke();
    background(#FFA500);
    fill(255);
    circle(600, 400, 430);
    image(img, 320.86, 155, 558.28, 500);
    fill(#FFA500);
    rect (0, 0, 600, 50);
    textSize(32);
    fill(0);
    text(l, 200, 10, 600, 500);
    fill(#0000FF);
    rect (600, 0, 600, 50);
    fill(255);
    text(q, 800, 10, 600, 50);
    for (Learn_Button lb : lbs) {
      stroke(0);
      lb.draw(); 
      //lb.mouseReleased();
    }
  }
  if (!mode) {
    noStroke();
    background(#0000FF);
    fill(#FFA500);
    rect (0, 0, 600, 50);
    fill(0);
    textSize(32);
    text(l, 200, 10, 600, 500);
    fill(#0000FF);
    rect (600, 0, 600, 50);
    fill(255);
    text(q, 800, 10, 600, 50);
    fill(#FFFF00);
    rect(710, 65, 350, 75);
    fill(0);
    textSize(50);  
    textAlign(CENTER, CENTER);
    text("CONTINUE", 710, 65, 350, 60);
    textAlign(LEFT, TOP);
    fill(255);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("STREAK: " + score, 50, 65, 350, 60);
    text("LONGEST STREAK: " + highscore, 350, 65, 350, 60);
    textAlign(LEFT, TOP);
    if (score > highscore) highscore = score;
    qus.get(i).draw();
  }
}

void mouseReleased() {
  if (mouseX>=0 && mouseX<= 600 && mouseY >=0 && mouseY <=50) mode = true;
  if (mouseX>=600 && mouseX<= 1200 && mouseY >=0 && mouseY <=50) mode = false;
  System.out.println(mouseX+", "+mouseY);
  if (mode) {
    for (Learn_Button lb : lbs) {
      stroke(0);
      lb.mouseReleased();
    }
  }
  if (!mode) {
    qus.get(i).checkAnswer(); 
    if (mouseX>=710 && mouseX <= 1060 && mouseY >=65 && mouseY <= 125) {
      qus.get(i).button1.answered = false;
      qus.get(i).button2.answered = false;
      qus.get(i).button3.answered = false;
      qus.get(i).button4.answered = false;
      if (Math.random() > .5) {
        if ( i== qus.size()-1) i = 0;
        else i++;
      } else i = (int)(Math.random() * qus.size());
    }
  }
}
