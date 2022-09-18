int positionX = -150; // santa  X
int positionY = 600; // santa Y
int positionY2 = 600; // santa arms Y
int positionXT = 380; // TREE X  
int positionYT = 600; // TREE Y

color[] colors = // colors array
{
#000000, // 0 black
#471c01, // 1 trunk
#FFFFFF, // 2 white
#22581d, // 3 tree green
#378B29, // 4 text green
#ff0000, // 5  santa red
#edbfa6, // 6  skin tone
#FFFEED, // 7  background colour
#fbc93d, // 8 yellow balls
#fb4f4f, // 9 red balls

};

void setup(){
  size(590,840);}
  

void draw() {
  background(colors[7]); // background colour
   strokeWeight(2);
  stroke(colors[0]);
     
  //TREE
  
  fill(colors[1]);
  rect(width/2 -25 , height/2 - 35, 50,70); //trunk
  fill(colors[3]);
  triangle(positionXT,positionYT, positionXT+200,positionYT,positionXT+100,positionYT-200);
  triangle(positionXT, positionYT-100, positionXT+200, positionYT-100, positionXT+100, positionYT-300); 
  
  //TREE BALLS
  fill(colors[8]);
  ellipse(positionXT+20, positionYT-20, 10,10);
  ellipse(positionXT+50, positionYT-50, 10,10);
  ellipse(positionXT+80, positionYT-80, 10,10);
  ellipse(positionXT+110, positionYT-110,10,10);
  ellipse(positionXT+140, positionYT-140, 10,10);
  ellipse(positionXT+170, positionYT-170, 10,10);
  ellipse(positionXT+20, positionYT-110,10,10);
  ellipse(positionXT+50, positionYT-140,10,10);
  ellipse(positionXT+80, positionYT-170,10,10);
  ellipse(positionXT+110, positionYT-200,10,10);
  ellipse(positionXT+140, positionYT-230,10,10);
  
  fill(colors[5]); // santa red
  rect(positionX, positionY,100,100); // belly
  rect(positionX - 25, positionY2, 20,60); // left arm
  rect(positionX + 105, positionY2, 20,60); // right arm
  rect(positionX+15, positionY+105, 20,60); // left leg
  rect(positionX+60, positionY+105, 20,60); // right leg
  fill(colors[0]); // black
  rect(positionX+15, positionY+170, 20, 10); // left foot
  rect(positionX+60, positionY+170, 20, 10); // right foot
  fill(colors[6]); // skin tone
  ellipse(positionX + 50 , positionY - 20, 70,70); // head
  fill(colors[5]); // santa red
  triangle(positionX + 15, positionY - 45, positionX + 85, positionY - 45, positionX + 50, positionY - 100); // hat
  fill(colors[2]); // white
  ellipse(positionX + 50, positionY - 100, 20,20); // ball on top of hat
  positionX++;
  
  // TEXT
  textSize(60);
  fill(colors[4]);
  text("Merry Christmas", 60, 60);
  textSize(20);
  text("1. Move the tree with WASD", 40, 820);
  text("2. Left mouse click", 360, 820);
  
  //mouse interaction
  fill(colors[0]);
  ellipse(mouseX-15, mouseY-10, 10,10); 
  ellipse(mouseX+15,mouseY-10, 10,10);
  fill(colors[2]);
  triangle(mouseX-20,mouseY+10,mouseX+20,mouseY+10,mouseX,mouseY+40);
  
  
  
  
  // horizontal santa movement
  if (positionX > 640){
  positionX = -150;}
  
  // hand movement
  if (positionX >= width/2){
    positionY2 = 550;}
  else positionY2 = 600;
   
// tree movement
   if ((keyPressed == true) && (key == 'w')){ // up
     positionYT = positionYT - 1;}
   else if ((keyPressed == true) && (key == 's')){ // down
     positionYT = positionYT + 1;}
   else if ((keyPressed == true) && (key == 'd')){ // right
     positionXT = positionXT +1;}
   else if ((keyPressed == true) && (key == 'a')){ // left
     positionXT = positionXT - 1;}

 
}

void mousePressed(){
  colors[8] = colors[9];

 }
 
