//This sketch based on this documentation: https://processing.org/tutorials/pixels/
// set the size of your window
size(1000, 1000);

// loads the current display into a pixel array
loadPixels();

// Here I loop through each pixel and modify its value based on randomly set values
for (int i = 0; i < pixels.length; i++ ) { // We can get the length of the pixels array just like with any array.

  // Pick a random number, 0 to 255
  float randHue = random(255);
  float randSaturation = random(255);
  float randBrightness = random(255);
  //float randAlpha = random(255);

  // Create distribution of colors based on the randomly initialized values.
  color c = color(randHue, randSaturation, randBrightness);

  // Set pixel at that location to random color
  pixels[i] = c; // This is just to access elements in the pixel array
}
// When we are finished dealing with pixels
updatePixels();

//to save your image, you will need to add this line of code in a new tab:
//save("file_name.jpeg");
