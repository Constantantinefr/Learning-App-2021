PImage img;
boolean mode = true;
String l = "LEARN MODE";
String q = "QUIZ MODE";
Question qu = new Question("0°", "(1,0)", "(0,1)", "(1,1)", "(√2/2, √2/2)"); //√ °
public void setup() {
  size (1200, 800);
  img = loadImage("UnitBlank.png");
}

public void draw() {
  background(255);
  if (mode) {
    background(#FFA500);
    fill(255);
    circle(600, 400, 430);
    image(img,320.86,155,558.28,500);
    fill(#FFA500);
    rect (0,0,600,50);
    textSize(32);
    fill(0);
    text(l, 200, 10, 600, 500);
    fill(#0000FF);
    rect (600,0,600,50);
    fill(255);
    text(q,800,10,600,50);
  }
  if (!mode) {
    background(#0000FF);
    fill(#FFA500);
    rect (0,0,600,50);
    fill(0);
    textSize(32);
    text(l, 200, 10, 600, 500);
    fill(#0000FF);
    rect (600,0,600,50);
    fill(255);
    text(q,800,10,600,50);
    qu.draw();
  }
}

void mouseReleased() {
 if (mouseX>=0 && mouseX<= 600 && mouseY >=0 && mouseY <=50) mode = true;
 if (mouseX>=600 && mouseX<= 1200 && mouseY >=0 && mouseY <=50) mode = false;
}
