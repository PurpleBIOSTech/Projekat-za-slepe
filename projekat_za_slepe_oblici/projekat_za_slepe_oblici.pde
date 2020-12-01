import processing.sound.*;
SoundFile file;

int mode = 1;

void setup() {
  size(800, 600);
  background(255);
  imageMode(CENTER);
}

void draw() {
  
  PImage kocka;
  kocka = loadImage("cub.png");
  PImage kvadar;
  kvadar = loadImage("bri.png");
  PImage lopta;
  lopta = loadImage("cir.png");
  PImage piramida;
  piramida = loadImage("pyr.png");
  PImage valjak;
  valjak = loadImage("cyl.png");
  PImage kupa;
  kupa = loadImage("cone.png");  
  
  if(mode == 1) {
    background(255);
    image(kocka, width * 0.2, height * 0.25, 200, 200);
    image(valjak, width * 0.5, height * 0.25, 200, 200);
    image(lopta, width * 0.8, height * 0.25, 200, 200);
    image(piramida, width * 0.2, height * 0.75, 200, 200);
    image(kvadar, width * 0.5, height * 0.75, 200, 200);
    image(kupa, width * 0.8, height * 0.75, 200, 200);
    file = new SoundFile(this, "cube.wav");
    file.play();
    mode = 0;
    delay(1000);
  }
  
  if(mode == 113) {
    background(255);
    image(kocka, width * 0.5, height * 0.5);
    file = new SoundFile(this, "cube.wav");
    file.play();
    mode = 0;
    delay(1000);
  }
  
  if(mode == 119) {
    background(255);
    image(valjak, width * 0.5, height * 0.5);
    file = new SoundFile(this, "cylinder.wav");
    file.play();
    mode = 0;
    delay(1000);
  }

  if(mode == 101) {
    background(255);
    image(lopta, width * 0.5, height * 0.5);
    file = new SoundFile(this, "ball.wav");
    file.play();
    mode = 0;
    delay(1000);
  }

  if(mode == 114) {
    background(255);
    image(piramida, width * 0.5, height * 0.5);
    file = new SoundFile(this, "pyramid.wav");
    file.play();
    mode = 0;
    delay(1000);
  }
  
  if(mode == 116) {
    background(255);
    image(kvadar, width * 0.5, height * 0.5);
    file = new SoundFile(this, "cube.wav");
    file.play();
    mode = 0;
    delay(1000);
  }
  
  if(mode == 122) {
    background(255);
    image(kupa, width * 0.5, height * 0.5);
    file = new SoundFile(this, "cube.wav");
    file.play();
    mode = 0;
    delay(1000);
  }
  
}

void keyPressed() {
  mode = key;
  print(mode);
}
