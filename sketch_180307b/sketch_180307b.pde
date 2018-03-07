int checkDistance(float _bx,float _by,float _w,float _h){
  int result;
 if (mouseX > _bx && mouseX < _bx+_w &&
    mouseY > _by && mouseY < _by+_h) {//hover
   // buttonColor = color(255, 0, 0);
   result =1;
    if(mousePressed){//click
         //buttonColor = color(random(255), random(255), random(255));
         result =2;
    }
  } else {
    //buttonColor = color(100);
    result =0;
  }
  return result;
  
}









color buttonColor;
int bx=200;
int by=200;
int w=300;
int h=300;

void setup (){
background(#7EDBFF);
fullScreen();
}
void draw(){
  fill(buttonColor);
  rect(bx,by,w,h);

int state = checkDistance(bx,by,w,h);
println (state);

if(state==0)buttonColor =color(0);
if(state==1)buttonColor =color(255);
if(state==2)buttonColor = color(random(255), random(255), random(255));
}