import processing.video.*;
Capture cam;

import controlP5.*;
ControlP5 cp5;

int myBLUR = 0;
int myPOST = 0;
int sliderValue = 10;

import ddf.minim.*;
Minim minim = new Minim(this);
AudioPlayer song;


import gohai.simpletweet.*;
SimpleTweet simpletweet;

void setup(){
  size(1040, 800);
  
  
  
  cam = new Capture(this, 640, 480, 30); //do not change
  cam.start();
  
  cp5 = new ControlP5(this);
    cp5.addButton("TakePhoto")
      .setPosition(width/2-200, 670)
      .setSize(100,100)
      .setCaptionLabel("Selfie Button");
      
      cp5.addSlider("myBLUR")
      .setPosition(50, 670)
      .setSize(100,25)
      .setRange(0,10)
      .setCaptionLabel("Blur Amount");
      
      cp5.addSlider("myPOST")
      .setPosition(50, 705)
      .setSize(100,25)
      .setRange(0,10)
      .setCaptionLabel("Posterize Amount");
      
      
     cp5.addButton("ShareTwitter")
      .setPosition(570, 670)
      .setSize(100,100)
      .setCaptionLabel("Share to Twitter");
    
    
    simpletweet = new SimpleTweet(this);

  /*
   * Create a new Twitter app on https://apps.twitter.com/
   * then go to the tab "Keys and Access Tokens"
   * copy the consumer key and secret and fill the values in below
   * click the button to generate the access tokens for your account
   * copy and paste those values as well below
   */
  simpletweet.setOAuthConsumerKey("..."); // My account keys are not displayed here for obvious reasons as with them anyone can have access to my twitter account.
  simpletweet.setOAuthConsumerSecret("...");
  simpletweet.setOAuthAccessToken("...");
  simpletweet.setOAuthAccessTokenSecret("...");
}
      
void draw(){
  background(193,8,8);
  fill(0,0,0);
  rect(45,145,650,490);
  
  textSize(50);
  text("Let's take a selfie!", 160, 100);
  
  textSize(35);
  text("Activate filters", 730, 150);
  text("by pressing key:", 730, 190);
  
  textSize(25);
  text("1. Grey", 750, 250);
  text("2. Threshold", 750, 290);
  text("3. Invert", 750, 330);
  text("4. Blur", 750, 370);
  text("5. Posterize", 750, 410);
  text("6. Erode", 750, 450);
  text("7. Dilate", 750, 490);
  
  
  image(cam, 50, 150);
  
  if ((keyPressed == true) && (key == '1')){
    filter(GRAY);
  }
  if ((keyPressed == true) && (key == '2')){  
    filter(THRESHOLD);
  }
  
  if ((keyPressed == true) && (key == '3')){  
    filter(INVERT);}
    
  if ((keyPressed == true) && (key == '4')){  
    filter(BLUR, myBLUR);  }
    
  if ((keyPressed == true) && (key == '5')){  
    filter(POSTERIZE, myPOST);  }
    
  if ((keyPressed == true) && (key == '6')){  
    filter(ERODE);  }
    
  if ((keyPressed == true) && (key == '7')){  
    filter(DILATE);  }
    
  if(cam.available()) {
    cam.read();
  }
  
}

public void TakePhoto()
  {
    song = minim.loadFile("shutter.mp3");
    song.play();
    saveFrame("selfie-#####.png");
}

public void ShareTwitter()
  {
    String tweet = simpletweet.tweetImage(get(), "I did this on Processing!");
  println("Posted" + tweet);
  }
