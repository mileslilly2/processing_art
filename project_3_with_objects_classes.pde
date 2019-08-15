import com.hamoid.*;
VideoExport video;

float circleSize = 0;
boolean pressed = false;
boolean pressedMouse = false;
int endQuad = 0;

randomTriangles tri;
randomTriangles tri2;
randomTriangles tri3;
randomTriangles tri4;
void setup() {
  size(1300,800);
  background(100);
  tri = new randomTriangles(255,255,255,0, 1000);
  tri2 = new randomTriangles(255,0,0,0, 1000);
  tri3 = new randomTriangles(0,255,0,0, 1000);
  tri4 = new randomTriangles(0,0,255,0, 1000);
  video = new VideoExport(this);
  video.startMovie();
}


void draw() {
  
  randomCircles();
  tri.keyPressed();
  tri.swarmTriangles();

  tri2.swarmTriangles();
  
  tri3.swarmTriangles();

  tri4.swarmTriangles();
  
  randomQuads();
  video.saveFrame();  
}

void keyPressed()
{
  if(key == 's'){
  pressed = keyPressed;
  circleSize = 0;
  background(100);
  }
  else if(key == 'q'){
    pressed = false;
    clear();
    background(100);
  }

}

void mousePressed()
  {
    if(mouseButton == LEFT){
      pressedMouse = true;
      circleSize = 0;
    }
    else if(mouseButton == RIGHT){
      pressedMouse = false;
      clear();
      background(100);
    }
  }
  
void randomCircles(){
  float red = random(0,255);
  float blue = random(0,255);
  float green = random(0,255);
  fill(red, blue, green);
  if (!pressed && !pressedMouse){
    //int circleX = width/2;
    //int circleY = height/2;
  
    float growthRate = random(0,2);
    stroke(255);
    //background(red/2,blue/2, green/2);
    
    ellipse(mouseX,mouseY,circleSize,circleSize);
    circleSize = circleSize + growthRate;
  }
}



void randomQuads(){
 if(pressedMouse){
    for(int count = 0; count < endQuad; count++){
    float red = random(0,255);
    float blue = random(0,255);
    float green = random(0,255);
    fill(red, blue, green);
    float x1 = random(0,width);
    float y1 = random(0,height);
    float x2 = random(0,500);
    float y2 = random(0,500);
    float x3 = random(0,600);
    float y3 = random(0,600);
    float x4 = random(0,700);
    float y4 = random(0,700);
    quad(x1,y1,x2,y2,x3,y3,x4,y4);
    }
    endQuad += 2;
  } 
}
