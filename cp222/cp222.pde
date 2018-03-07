int a;
int b;
int c;
int d;
int e;
PImage fff;

import ddf.minim.*;
Minim minim;    
AudioPlayer player1, player2, player3, player4, player5; 
//AudioPlayer sound; 

import controlP5.*;
ControlP5 cp5;
Button play1, play2, play3, play4, play5;

void setup() {
  fullScreen();
  noStroke();
  cp5 = new ControlP5(this);
  fff=loadImage("z12.png");

  PImage[] y1 = {loadImage("z0.png"), loadImage("z2.png"), loadImage("button_c.png")};
  play1 = cp5.addButton("play1");
  play1.setImages(y1);
  play1.updateSize();

  minim = new Minim(this); 
  player1 = minim.loadFile("y1.mp3");

  PImage[] y2 = {loadImage("z0.png"), loadImage("z10.png"), loadImage("button_c.png")};
  play2 = cp5.addButton("play2");
  play2.setImages(y2);
  play2.updateSize();

  minim = new Minim(this); 
  player2 = minim.loadFile("y2.mp3");

  PImage[] y3 = {loadImage("z0.png"), loadImage("z11.png"), loadImage("button_c.png")};
  play3 = cp5.addButton("play3");
  play3.setImages(y3);
  play3.updateSize();

  minim = new Minim(this); 
  player3 = minim.loadFile("y3.mp3");

  PImage[] y4 = {loadImage("z0.png"), loadImage("z7.png"), loadImage("button_c.png")};
  play4 = cp5.addButton("play4");
  play4.setImages(y4);
  play4.updateSize();

  minim = new Minim(this); 
  player4 = minim.loadFile("y4.mp3");

  PImage[] y5 = {loadImage("z0.png"), loadImage("z9.png"), loadImage("button_c.png")};
  play5 = cp5.addButton("play5");
  play5.setImages(y5);
  play5.updateSize();

  minim = new Minim(this); 
  player5 = minim.loadFile("y5.mp3");
}


void draw() {
  image(fff,0,0);


  if (a<=150) {

    a=a+10;
  } else {
    a=155;
  }

  if (b<=250) {

    b=b+10;
  } else {
    b=255;
  }

  if (c<=350) {

    c=c+10;
  } else {
    c=355;
  }

  if (d<=450) {

    d=d+10;
  } else {
    d=455;
  }


  if (e<=550) {

    e=e+10;
  } else {
    e=555;
  }


  play1.setPosition(90, a);
  if (play1.isPressed()) {  
    //play music
    player1.play();
    player2.pause();
    player3.pause();
    player4.pause();
    player5.pause();
  }

  play2.setPosition(330, b);
  if (play2.isPressed()) {  
    //play music
    player2.play();
    player1.pause();
    player3.pause();
    player4.pause();
    player5.pause();
  }

  play3.setPosition(550, c);
  if (play3.isPressed()) {  
    //play music
    player3.play();
    player2.pause();
    player1.pause();
    player4.pause();
    player5.pause();
  }

  play4.setPosition(780, d);
  if (play4.isPressed()) {  
    //play music
    player4.play();
    player2.pause();
    player3.pause();
    player1.pause();
    player5.pause();
  }

  play5.setPosition(1030, e);
  if (play5.isPressed()) {  
    //play music
    player5.play();
    player2.pause();
    player3.pause();
    player4.pause();
    player1.pause();
  }
  //PImage[] y2 = {loadImage("z0.png"), loadImage("z10.png"), loadImage("button_c.png")};

  //cp5.addButton("play2")

  //  .setPosition(330, b)
  //  .setImages(y2)
  //  .updateSize(); 

  //PImage[] y3 = {loadImage("z0.png"), loadImage("z11.png"), loadImage("button_c.png")};

  //cp5.addButton("play3")

  //  .setPosition(550, c)
  //  .setImages(y3)
  //  .updateSize();   

  //PImage[] y4 = {loadImage("z0.png"), loadImage("z7.png"), loadImage("button_c.png")};

  //cp5.addButton("play4")

  //  .setPosition(780, d)
  //  .setImages(y4)
  //  .updateSize();   

  //PImage[] y5 = {loadImage("z0.png"), loadImage("z9.png"), loadImage("button_c.png")};

  //cp5.addButton("play5")

  //  .setPosition(1030, e)
  //  .setImages(y5)
  //  .updateSize();   


  //if (mouseX > 140&&mouseY > 300) {
  //  minim.loadFile("y1.mp3");
  //} else {
  //}
}

public void controlEvent(ControlEvent theEvent) {
  //println(theEvent.getController.getName());
}