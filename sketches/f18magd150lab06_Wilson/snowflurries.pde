//attributed to the folder example, lesson_6D_Objects.

class SnowFlurry {

  float x, y, radius, xSpeed, ySpeed, xDir, yDir;
  color fill;

  SnowFlurry() {

// This randomizes the sizes of each snow flurry, on a range between 2 and 10.
    this(random(10, width - 10), 
      random(10, height - 10), 
      random(2, 10));
  }

  SnowFlurry(float x, float y, float radius) {

    this.x = x;
    this.y = y;
    this.radius = radius;

// This controls how fast each snow flurry moves across the screen.
    xSpeed = random(1, radius / 100.0);
    ySpeed = random(1, radius / 100.0);

    float theta = random(TWO_PI);
    xDir = cos(theta);
    yDir = sin(theta);

    fill = color(random(250, 250), 
      random(250, 250),
      250);
  }

  void draw() {
    bounce();

    pushStyle();
    noStroke();
    ellipseMode(RADIUS);

    //This is drawing the main circle that is used in each snow flurry.

    fill(fill);
    ellipse(x, y, radius, radius);

  }

  void bounce() {

    x += xSpeed * xDir;
    y += ySpeed * yDir;
    }
  }
