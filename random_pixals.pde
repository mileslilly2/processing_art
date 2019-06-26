// Example 15-5: Setting pixels

size(1000, 1000);

// Before we deal with pixels
loadPixels();

// Loop through every pixel
for (int i = 0; i < pixels.length; i++ ) { // We can get the length of the pixels array just like with any array.

  // Pick a random number, 0 to 255
  float randHue = random(255);
  float randSaturation = random(255);
  float randBrightness = random(255);
  float randAlpha = random(255);

  // Create a grayscale color based on random number
  color c = color(randHue, randSaturation, randBrightness);

  // Set pixel at that location to random color
  pixels[i] = c; // We can access individual elements of the pixels array via an index, just like with any other array.
}
//
// When we are finished dealing with pixels
updatePixels();
