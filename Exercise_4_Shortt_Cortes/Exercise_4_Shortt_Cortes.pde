PImage Oreimo;



void setup() {
  size(800, 800);
  background(0);
  Oreimo = loadImage("Ori.jpg");
  Oreimo.loadPixels();
  frameRate(60);
}


void draw() {
  Oreimo.resize(800, 800);
  image(Oreimo, 0, 0);
  for(int a = 0; a < 100; a++ ) {
    for(int i = 0; i < 100; i++){
    //Pick Random Point From Width And Height
    int x = int (random(Oreimo.width));
    int y = int (random(Oreimo.height));
    int loc = x + y*Oreimo.width;
    
    //Only Takes Red
    loadPixels();
    float r = red (Oreimo.pixels[loc]);
    
    //Apear As Cirle 
    fill(r,0,0,100);
    noStroke();
    ellipse(x,y,20,20);
   }
  }
  Oreimo.updatePixels();
}

