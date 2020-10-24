import processing.sound.*;
SoundFile file;

int mode = 0;

void setup() {
  size(800, 600);
  background(255);
  fill(255);
  stroke(0);
  rectMode(CENTER);
  kocka(width * 0.25, height * 0.25, 200);
  cilindar(width * 0.7, height * 0.25, 275, 150);
  lopta(width * 0.25, height * 0.75, 225);
  piramida(width * 0.6, height * 0.9, width * 0.75, height * 0.55, width * 0.9, height * 0.9);
}

void draw() {
  if(mode == 113) {
    background(255);
    kocka(width * 0.5, height * 0.5, 400);
    file = new SoundFile(this, "cube.wav");
    file.play();
    mode = 0;
  }
  if(mode == 119) {
    background(255);
    cilindar(width * 0.5, height * 0.5, 500, 250);
    file = new SoundFile(this, "cylinder.wav");
    file.play();
    mode = 0;
  }

  if(mode == 101) {
    background(255);
    lopta(width * 0.5, height * 0.5, 450);
    file = new SoundFile(this, "ball.wav");
    file.play();
    mode = 0;
  }

  if(mode == 114) {
    background(255);
    piramida(width * 0.1, height * 0.9, width * 0.5, height * 0.1, width * 0.9, height * 0.9);
    file = new SoundFile(this, "pyramid.wav");
    file.play();
    mode = 0;
  }
  
}

void kocka(float x, float y, float size) {
  rect(x, y, size, size);
}

void cilindar(float x, float y, float size1, float size2) {
  ellipse(x + size1 / 2, y, size2, size2);
  rect(x, y, size1, size2);
  stroke(255);
  line(x + size1 / 2, y - size2 / 2, x + size1 / 2, y + size2);
  stroke(0);
  ellipse(x - size1 / 2, y, size2, size2);
}

void lopta(float x, float y, float size) {
  ellipse(x, y, size, size);
}

void piramida(float x1, float y1, float x2, float y2, float x3, float y3) {
  line(x1, y1, x2, y2);
  line(x2, y2, x3, y3);
  line(x3, y3, x1, y1);
}

void keyPressed() {
  mode = key;
  print(mode);
}
