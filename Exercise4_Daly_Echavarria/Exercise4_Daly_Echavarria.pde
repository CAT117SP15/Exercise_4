PImage cave;



void setup() {
  size(400, 250);
  cave = loadImage("cavePainting.gif");
 
}

void draw(){
 background(cave);
 
 cave.loadPixels();
 
 for(int x = mouseX; x<width; x++){     //looping through what?
  int loc = x * width;   
 }
 /* if(mouseX > 100){
   pixels[loc] = color(200); //this is changing pixels location (?)
  } else {
   pixels[loc] = color(0);
   updatePixels();
 } */
}







































