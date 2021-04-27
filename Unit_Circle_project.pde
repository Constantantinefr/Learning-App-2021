PImage img;
boolean mode = true;
String l = "LEARN MODE";
String q = "QUIZ MODE";
ArrayList<Learn_Button> lbs;
Question qu = new Question("0°", "(1,0)", "(0,1)", "(1,1)", "(√2/2, √2/2)",1); //√ °  π
public void setup() {
  size (1200, 800);
  img = loadImage("UnitBlank.png");
  lbs = new ArrayList<Learn_Button>();
   lbs.add(new Learn_Button("330°", "11/6π", "(√3/2, -1/2)", 836, 488));
  lbs.add(new Learn_Button("315°", "7/4π", "(√2/2, -√2/2)", 762, 564)); 
  lbs.add(new Learn_Button("300°", "5/3π", "(1/2, -√3/2)", 694, 610));
  lbs.add(new Learn_Button("270°", "3/2π", "(0, -1)", 558, 624));
  lbs.add(new Learn_Button("240°", "4/3π", "(-1/2, -√3/2)", 451, 615)); 
  lbs.add(new Learn_Button("225°", "5/4π", "(-√2/2, -√2/2)", 378, 568));
  lbs.add(new Learn_Button("210°", "7/6π", "(-√3/2, -1/2)", 331, 496));
  lbs.add(new Learn_Button("0°", "0 or 2π", "(1,0)",890,375));
  lbs.add(new Learn_Button("30°", "1/6π", "(√3/2, 1/2)", 801, 264));
  lbs.add(new Learn_Button("45°", "1/4π", "(√2/2, √2/2)", 779, 185));
  lbs.add(new Learn_Button("60°", "1/3π", "(1/2, √3/2)", 709, 117));
  lbs.add(new Learn_Button("90°", "1/2π", "(0, 1)", 567, 87));
  lbs.add(new Learn_Button("120°", "2/3π", "(-1/2, √3/2)", 431, 123));
  lbs.add(new Learn_Button("135°", "3/4π", "(-√2/2, √2/2)", 359 , 183));
  lbs.add(new Learn_Button("150°", "5/6π", "(-√3/2, 1/2)", 313, 253));
  lbs.add(new Learn_Button("180°", "π", "(-1, 0)", 245, 375));
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
    for (Learn_Button lb : lbs) {
     lb.draw(); 
    }
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
 System.out.println(mouseX+", "+mouseY);
 if(mode) {
   for (Learn_Button lb : lbs) {
     lb.mouseReleased();
     
    } 
 }
 if (!mode) {
   qu.checkAnswer(); 
 }
}
