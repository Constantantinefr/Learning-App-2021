public class Learn_Button {
 private String degree, radian, coordinate; 
 private int x, y, size, openSize;
 private boolean isOpen;
 
 public Learn_Button(String d, String r, String c, int x, int y){
   this.degree = d;
   this.radian = r;
   this.coordinate = c;
   this.x = x;
   this.y = y;
   this.size = 70;
   this.openSize = 150;
   this.isOpen = false;
 }
 
 public void mouseReleased() {
   if (mouseX > x && mouseX < x+size && mouseY>y && mouseY< y+size){
     isOpen = true;
   }
   if (!(mouseX > x && mouseX < x+openSize && mouseY>y && mouseY< y+openSize)) isOpen = false;
 }
 
 public void draw() {
   fill(255);
   if(!isOpen) {
     rect(x,y,size,size);
     textSize(30);
     fill(0);
     textAlign(CENTER,CENTER);
     text(degree, x, y, size, size);
     textAlign(LEFT,TOP);
   }
   if(isOpen) {
     rect(x,y,openSize,openSize);
     fill(0);
     textSize(25);
     textAlign(CENTER,TOP);
     text(degree,x,y,openSize,openSize);
     textAlign(CENTER,CENTER);
     text(radian, x,y, openSize, openSize);
     textAlign(CENTER, BOTTOM);
     textSize(19);
     text(coordinate, x,y, openSize, openSize);
     textAlign(LEFT, TOP);
 }
 }
}
