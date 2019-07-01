float[] red; //In lines 1-4 I initialize four seperate arrays
float[] blue;
float[] green;
float[] alpha;
void setup() 
{
  size(1000, 500); // sets the pixel width and height of my window
  red = new float[width]; // In lines 7-10 I set the length of each of the arrays
  blue = new float[width];
  green = new float[width];
  alpha = new float[width];
// For for loop through each element of each array.
  for (int i = 0; i < red.length; i++)
  {
    red[i] = random(0, 255); // Lines 13-16 set a random value between 0-255 for each 
    blue[i] = random(0, 255); // element within each array, 
    green[i] = random(0, 255);
    alpha[i] = random(0, 255);
  }
}
void draw() 
{
  /*This loops throught each array and uses the element at location 'i' to set the color
  value for each line drawn. Each line is only one pixel dense, */
  for (int i = 0; i < red.length; i++) 
  {
    stroke(red[i],blue[i],green[i],alpha[i]);
    line(i, 0, i, height);
  }
  save("arrayRandomColors.png");// lines 30-31 save the image as both a .jpg and .png file
  save("arrayRandomColors.jpg");
}
