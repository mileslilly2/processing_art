size(2500,800);
float lineWidth = 0.5;
int lineAngle = -3000;
int red = 0;
int blue = 0;
int green = 0;
for(int num = 1; num < 200; num++) 
{
  
  strokeWeight(lineWidth);
  stroke(red,blue,green);
  line(width/2, height, lineAngle, 0-height);
  lineAngle = lineAngle + 50;
  lineWidth = lineWidth + 0.25;
  if (red < 256)
  {
  red = red + 10;
  println("The value of red is ", red);
  }
  else if(blue < 256)
  {
  blue = blue + 10;
  println("The value of blue is ",blue);
  }
  else if(green < 256)
  {
  green = green + 10;
  println("The value of green is ", green);
  }
  else
  {
    println("You have reached the end. All colors values are at 255");
    break;
  }
}
save("color_gradiant.jpg");
