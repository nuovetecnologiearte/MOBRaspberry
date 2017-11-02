
import ddf.minim.*;

Minim minim;
AudioInput in;

//color white;
PImage img1;
PImage img2;
PImage img3;
PImage img4;

float value;
void setup()
{
  //size(1440, 900);
  fullScreen();
  //white = color(255);
  //colorMode(HSB,100);
  minim = new Minim(this);
  minim.debugOn();
  
  in = minim.getLineIn(Minim.MONO, 512, 48000.0f, 16);
  
  
  img1 = loadImage("1.png");
  img2 = loadImage("2.png");
  img3 = loadImage("3.png");
  img4 = loadImage("4.png");
  img1.resize(width, height);
  img2.resize(width, height);
  img3.resize(width, height);
img4.resize(width, height);
}

void draw()
{
  background(img2);
  value = (abs((in.left.get(5)*50)));
println(value);



if (value > 0 && value <1) {
image(img1, 0,0);
} else if (value >= 1 && value < 2.5) {
  image(img2, 0, 0);
} else if (value >= 2.5 && value <8) {
  image(img3, 0,0); 
} else if (value >= 8){
  image(img4, 0, 0);
}

}


void stop()
{
  in.close();
  minim.stop();
  super.stop();
}