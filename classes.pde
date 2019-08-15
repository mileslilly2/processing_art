class randomTriangles{
  float red;
  float green;
  float blue;
  int sizeMin;
  int sizeMax;
  boolean pressed2 = false;
  
  randomTriangles(float setRed, float setGreen, 
 float setBlue, int setMin, int setMax){
              
           red = setRed;
           green = setGreen;
           blue = setBlue;
           sizeMin = setMin;
           sizeMax = setMax;
                    
                  }
                  
 void keyPressed()
{
  if(key == 's'){
  pressed = true;
  circleSize = 0;
  background(100);
  }
  else if(key == 'q'){
    pressed = false;
    clear();
    background(100);
  }

}
   void swarmTriangles(){
   float ored = random(0,red);
   float oblue = random(0,green);
   float ogreen = random(0,blue);
 
  
  if (pressed){
    float x1 = random(sizeMin,sizeMax);
    float y1 = random(sizeMin,sizeMax);
    float x2 = random(sizeMin,sizeMax);
    float y2 = random(sizeMin,sizeMax);
    float x3 = random(sizeMin,sizeMax);
    float y3 = random(sizeMin,sizeMax);
    fill(ored,ogreen,oblue);
    triangle(x1,y1,x2, y2, x3,y3);
  } 
}



}
