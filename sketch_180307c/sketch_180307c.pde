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









color buttonColor = color(100);
float bx, by, w, h;

void setup (){
  size(850.650);
  noStroke();
//background(#7EDBFF);
//fullScreen();
w=50;
h=50;
}
void draw(){
 // fill(buttonColor);
  //rect(bx,by,w,h);
  for (int by = 0; by < height; by +=2*h){
  for (int bx = 0; bx < width; bx +=2*w){

int state = checkDistance(bx,by,w,h);
println (state);

if(state==0)buttonColor =color(0);
if(state==1)buttonColor =color(255);
if(state==2)buttonColor = color(random(255));

fill(buttonColor);
rect(bx,by,w,h);
  }
}
}