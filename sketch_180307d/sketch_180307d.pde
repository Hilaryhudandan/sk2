int x=100;
int y=100;
int w=200;
int h=200;
int buttonColor;
Button button1, button2;

class Button {
  float x, y, w,h;
  int result = 0;
  color buttonColor = color(100);
  Button(float _x, float _y, float _w,float _h) {
    x = _x;
    y = _y;
    w = _w;
    h =_h;
  }
  void checkDistance(){
 
   if (mouseX > x && mouseX < x+w &&
    mouseY > y && mouseY < y+h) {//hover
    //buttonColor = color(255, 0, 0);
      result = 1;
      if (mousePressed) {
        result = 2;
      }
    } else {
      result = 0;
    }
  }
  void updateColor() {
    switch(result) {
    case 0:
      buttonColor = color(100);
      break;
    case 1:
      buttonColor = color(255, 0, 0);
      break;
    case 2:
      buttonColor = color(random(255), random(255), random(255));
      break;
    }
  }
  void display() {
    fill(buttonColor);
    rect(x, y, w, h);
  }
}
// declare
void setup (){
background(#7EDBFF);
  size(800, 800);
  //init
  button1 = new Button(x,y,w,h);
  button2 = new Button(x*2,y*2,w*2,h*2);
}
void draw() {
  background(100);
  //run btn1
  button1.checkDistance();
  button1.updateColor();
  button1.display();
  //run btn2
  button2.checkDistance();
  button2.updateColor();
  button2.display();
}