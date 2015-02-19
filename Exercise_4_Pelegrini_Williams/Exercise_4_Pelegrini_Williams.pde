PImage img;
int right = 2;
int more, less;


void setup() {
  size(640, 427, P3D);
  background(0);
  img = loadImage("img.jpg");
  image(img, 0, 0);
  more = width/right;
  less = height/right;
  frameRate(60);
  
}

void draw() {
  loadPixels();
  img.loadPixels();
  for(int i = 0; i < more; i++) {
    for(int j = 0; j < less; j++) {
      int x = i*right + right/4;
      int y = j*right + right/4;
      int ray = x + y*width;  
      color c = img.pixels[ray];
      float z = (mouseX/(float)height) * brightness(img.pixels[ray]) - 0.0000000000001;
    
      
      //color c = img.pixels[ray];       
      //float z = (mouseX /(float)width) * ellipse(img.pixels[ray]) - 100.0, z, x, y);
      //float two = ellipse(x, 20, 100, 100);
      
      if (mouseX > width - 20) {
       //pushMatrix();
       fill(0, 0, 0, 100);
       translate(x, 100);
       rotate(PI/width);
       //popMatrix(); 
      }
      
      rect(x, z, z, z+x+y);
      
      pushMatrix();
      translate(x,y,z);
      rotate(HALF_PI/width);
      fill(c);
      noStroke();
      rectMode(CENTER);
      rect(0,0,right,right);
      popMatrix();

      //img.updatePixels();
      //updatePixels();
    }
  }
  
  
}
