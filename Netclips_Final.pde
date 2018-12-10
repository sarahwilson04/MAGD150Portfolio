//Sarah puts movie files in the ellipses. Use example_16_04_MoviePlayback for reference. Also find a sound file to use. Add text to each video too.
import processing.video.*;
Movie movie;

int cx = 750;
int cy = 400;
int r = 50;
PFont font1, font2;
int textSize, textAlign;

void setup() {
  size (1500,800);
  surface.setTitle("Netclips");
  
  movie = new Movie(this, "Sheep Scratching On Rocks.mp4");
  movie = new Movie(this, "Aerial Shot of Forest Covered In Snow.mp4");
  movie = new Movie(this, "Black Geese Walking On Grass.mp4");
  movie = new Movie(this, "Horses Eating Grass.mp4");
  movie = new Movie(this, "Dogs Running.mp4");
  movie = new Movie(this, "Ocean.mp4");
  movie = new Movie(this, "Land.mp4");
  movie = new Movie(this, "Night Sky.mp4");

}
void draw() {
  background (25);
  //fill(11,195,214); //turqoise   
 
  font1 = createFont("Impact", 92);
  textFont(font1,92);
  textAlign(CENTER);
  fill(11,195,214);
  text("NETCLIPS", 750, 100);
 
  //captions
  font2 = createFont("Helvetica", 24);
  textFont(font2, 18);
  textAlign(CENTER);
  fill(11,195,214);
 
  textAlign(LEFT);
  textSize(42);
  text("Animals", 75,150);
  text("Nature", 75,500);
 
  textAlign(CENTER);
  textSize(24);
 //images/videos
  noStroke();
  ellipse(200,300,250,250);
  text("cat",125,375);
 
  ellipse(550,300,250,250);
  text("dog",375,375);
  ellipse(900,300,250,250);
  text("gold fish",125, 625);
 
  ellipse(1250, 300, 250, 250);
  text ("lizard", 125, 625);
 
  ellipse(200,650,250,250);
  text("parrot",375, 625);
 
  ellipse(550,650,250,250);
  ellipse(900,650,250,250);
 
  ellipse(1250,650,250,250);
 
  if (mousePressed){
  //loading screen
  fill(255,255,255,150);
  rectMode(CORNER);
  rect(0,0,width,height);
  
  ellipseMode(CENTER);
  stroke(240);
  strokeWeight(15);
  noFill();
  ellipse(width/2,height/2,100,100);
  
  //https://processing.org/discourse/beta/num_1264000877.html
  float t = millis()/250.0f;
  int x = (int)(cx+r*cos(t));
  int y = (int)(cy+r*sin(t));
  fill(200);
  noStroke();
  ellipse(x,y,15,15);
  }
 
 
}


  textFont(font1,72);
  textAlign(CENTER);
  fill(11,195,214);
  text("NETCLIPS", 750, 100);
 
  //captions
  font2 = createFont("Helvetica", 24);
  textFont(font2, 18);
  textAlign(CENTER);
  fill(11,195,214);
 
 //images/videos
  noStroke();
  ellipse(200,300,250,250);
  text("cat",125,375);
 
  ellipse(550,300,250,250);
  text("dog",375,375);
  ellipse(900,300,250,250);
  text("gold fish",125, 625);
 
  ellipse(1250, 300, 250, 250);
  text ("lizard", 125, 625);
 
  ellipse(200,650,250,250);
  text("parrot",375, 625);
 
  ellipse(550,650,250,250);
  ellipse(900,650,250,250);
 
  ellipse(1300,650,250,250);
 
  if (mousePressed){
  //loading screen
  fill(255,255,255,150);
  rectMode(CORNER);
  rect(0,0,width,height);
  
  ellipseMode(CENTER);
  stroke(240);
  strokeWeight(15);
  noFill();
  ellipse(width/2,height/2,100,100);
  
  //https://processing.org/discourse/beta/num_1264000877.html
  float t = millis()/250.0f;
  int x = (int)(cx+r*cos(t));
  int y = (int)(cy+r*sin(t));
  fill(200);
  noStroke();
  ellipse(x,y,15,15);
  }
