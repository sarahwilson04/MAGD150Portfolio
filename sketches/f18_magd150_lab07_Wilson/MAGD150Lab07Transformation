//attributed from examples:
//Ex_1_2_bouncingball_vectors_object
//_Ex_1_8_nested_push_pop
//and https://processing.org/reference/Array.html

Ball b;
float theta = 0;

PVector position;
PVector velocity;

void setup() {
  size(275, 700);
  
  //This determines the starting position of the ball and how fast it will go.
  position = new PVector(10, 10);
  velocity = new PVector(10,5);
  b = new Ball();
}

void draw() {
  stroke(10);
  
  //This changes the color of the background using RGB.
  fill(255, 0, 0);
  rect(0, 0, width, height);
  b.update();
  b.display();
  translate(width/5, height/5);

  for (float i = 0; i < TWO_PI; i += 0.2) {

    pushMatrix(); 
    rotate(theta + i);
    line(0, 0, 25, 0);

    for (float j = 0; j < TWO_PI; j += 0.9) {
      pushMatrix();
      translate(200, 0);
      //This turns the loop using the theta degree to produce the motion.
      rotate(-theta-j);
      //This determines the size of the loop.
      scale(0.4);
      line(0, 0, 20, 0);
      popMatrix();
    }
    
    popMatrix();
  }

  theta += 0.005;
}
{
int degrees = 180;
float[] cos_vals = new float[degrees];
for (int i=0; i < degrees; i++) {         
  cos_vals[i] = cos(TWO_PI/degrees * i);
}
}
//This creates a game where the ball has to pass through the spike barrier
//in order to get to the center hole for the jack pot.
