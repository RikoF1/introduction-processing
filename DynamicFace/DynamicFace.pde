int bluecolour = 255;
int widthellipse = 800;
int alpha = 255;
int alpha1 = 255;
int alpha2= 0;
void setup() {
   size(800,600);
   background(255,255,255);
}


void draw() {
 //debug alpha rect(width/2, height/2,200,200);
 fill(252,240,255, alpha);
  ellipse(width/2, height/2,300,400); //head
 fill(0, random(0,255), bluecolour, alpha);
 ellipse(width/2-75, height/2-100, 25,25); //right eye
 ellipse(width/2+75, height/2-100, 25,25); //left eye
 fill(255,180,180, alpha);
 triangle(width/2-50, height/2+35, width/2+50,height/2+35, width/2,height/2-100); //nose
 rect(width/2-75,height/2+100,150,50);
  //2nd task
 fill(255,230,0, alpha);
 ellipse(widthellipse,0,10,10);
  widthellipse = widthellipse - 1;
    }
    
  //A

void mousePressed()
{
  alpha = alpha2;
   
}

void keyPressed() 
{
  alpha = alpha1;
}
 
