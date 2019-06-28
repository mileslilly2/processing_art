// this code is a remixed version of code found in the 'getting started with processing' book
import com.hamoid.*; // this is a libray that allows you to export as a video

VideoExport videoExport; //this creates a video objects

float speed = 100; // the speed processing will draw new shapes
int diameter = 30; // the size of each shape
float x; // the x coordinate for each shape
float y; // the y coordinate for each shape
//float randomColor; // a variable to store each random color
float red, blue, green; // // variables to store random red, blue and green values
void setup() {
  size(800, 800);
  smooth();
  x = width/2;
  y = height/2;
  videoExport = new VideoExport(this);
  videoExport.startMovie();
}
void draw() {
  x += random(-speed, speed); // sets the movement speed in relation to X
  y += random(-speed, speed); // sets the movement speed in relation to Y
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
  red = random(0,255); // randomly sets a value for red
  blue = random(0, 255); // randomly sets a value for red
  green = random(0, 255); // randomly sets a value for red
  color c1 = color(red, blue, green); // sets the variable
  fill(c1); // sets color of the shape
  ellipse(x, y, diameter, diameter); // draws the shape
  videoExport.saveFrame(); // saves the video
}
