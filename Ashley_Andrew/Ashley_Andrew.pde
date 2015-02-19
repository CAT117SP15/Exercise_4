PImage Sha;
int pointillize = 12;

void setup() {
  size(1024,1020);
  Sha = loadImage("Sha.png");
  background(0);
  smooth();
}

void draw() {
  // Pick a random point
  int x = int(random(Sha.width));
  int y = int(random(Sha.height));
  int loc = x + y*Sha.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(Sha.pixels[loc]);
  float g = green(Sha.pixels[loc]);
  float b = blue(Sha.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize);
}
