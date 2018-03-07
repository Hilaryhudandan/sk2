 int button1Color;
 int button2Color;
 int x1=600;
 int y1=600;
 int size1=200;
 int x2=200;
 int y2=200;
 int size2=300;
 
 void setup (){
   background(#7EDBFF);
   fullScreen();
 }
 void draw(){
 fill(button1Color);
 rect(x1, y1, size1, size1);
  fill(button2Color);
 rect(x2, y2, size2, size2);

  if (mouseX > x1 && mouseX < x1+size1 &&
    mouseY > y1 && mouseY < y1+size1) {
    button1Color = color(255, 0, 0);
    if(mousePressed){
 
      button1Color = color(random(255), random(255), random(255));
    }
 } else {
    button1Color = color(100);
  }
  if (mouseX > x2 && mouseX < x2+size2 &&
    mouseY > y2 && mouseY < y2+size2) {
    button2Color = color(255, 0, 0);
if(mousePressed){
      button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(100);
  }
  }