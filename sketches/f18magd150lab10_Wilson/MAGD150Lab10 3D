//Attributed from the following:
//Example_10_6_Texturing
//Example_10_5_Lighting
//Example_1-_8_Camera
//https://processing.org/reference/camera_.html
//https://processing.org/reference/save_.html

PImage back, 
  bottom, 
  front, 
  left, 
  right, 
  top, 
  txtr;
float x, y, z, 
  scale, xRotation, yRotation,
  u, v, uOffset, vOffset;
boolean showDiagnosticImages = true;

//This has all of the variables that controls the direct light.
float dirv1, dirv2, dirv3, dirx1, diry1, dirz1, 
  dirx2, diry2, dirz2;
 
//This has all of the variables that controls the point light.
  float ptv1, ptv2, ptv3, ptx1, pty1, ptz1, 
  ptx2, pty2, ptz2;
  
int rate, colorMode;

PShape box, sphere;

void setup() {
  surface.setResizable(true);
  surface.setTitle("Texturing");
  pixelDensity(displayDensity());
  size(700, 420, P3D);
  background(80);
  noStroke();
  colorMode(RGB, 20, 10, 50);
  surface.setTitle("Lighting");
  line(10, 20, 20, 20);
save("diagonal.tif");
line(10, 20, 20, 10);
save("cross.tga");

camera(99.0, 39.0, 68.0, 20.0, 20.0, 0.0, 
       0.0, 1.0, 0.0);
translate(55, 55, 0);
rotateX(-PI/2);
rotateY(PI/1);
box(66);

  dirv1 = random(0, 120);
  dirv2 = random(0, 120);
  dirv3 = random(0, 120);

  dirx1 = random(-2, 2);
  diry1 = random(-2, 2);
  dirz1 = random(-2, 2);
  
  ptv1 = random(0, 255);
  ptv2 = random(0, 255);
  ptv3 = random(0, 255);
  ptx1 = random(0, width);
  pty1 = random(0, height);
  ptz1 = 0;
  
   rate = 100;
  colorMode = RGB;

  //This is the scale and rotation axis of the cube mesh.
  x = width / 2.0;
  y = height / 2.0;
  z = -500;
  scale = min(width, height) / 2.0;
  xRotation = 0;
  yRotation = 0;

  u = 1;
  v = 1;

  textureMode(NORMAL);

  textureWrap(REPEAT);

  uOffset = 0;
  vOffset = 0;

  right = loadImage("right.png");
  left = loadImage("left.png");
}

void draw() {
  background(32);
  colorMode(colorMode, 100, 241, 87);

//This draws the 3D sphere.
 pushMatrix();
  translate(width * 0.125, height / 2.0, -height / 1.25);
  sphere(height / 2.5);
  popMatrix();

  //This draws the 3D box.
  pushMatrix();
  translate(width * 0.825, height / 2.0, -height / 1.25);
  rotateX(frameCount / 85.0);
  rotateY(frameCount / 85.0);
  box(height / 2.5);
  popMatrix();
  
directionalLight(dirv1, dirv2, dirv3, dirx1, diry1, dirz1);
 pointLight(ptv1, ptv2, ptv3, ptx1, pty1, ptz1);

 // Set a new destination for the directional light.
    dirx2 = random(-2.0, 1.0);
    diry2 = random(-2.0, 1.0);
    dirz2 = random(-2.0, 1.0);
  
  if (mousePressed) {
    if (mouseButton == RIGHT
      && mouseX > 0 && mouseY > 0
      && mouseX < width && mouseY < height) {
      u = map(mouseX, 0, width, 0.5, 10);
      v = map(mouseY, 0, height, 0.5, 10);
    }
  } else {
    xRotation = map(mouseY, -height * 0.5, height * 0.5, 0, TWO_PI);
    yRotation = map(mouseX, -width  * 0.5, width  * 0.5, 0, TWO_PI);
  }

  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == LEFT) {
        uOffset -= 0.01;
      } else if (keyCode == RIGHT) {
        uOffset += 0.01;
      } else if (keyCode == UP) {
        vOffset += 0.01;
      } else if (keyCode == DOWN) {
        vOffset -= 0.01;
      }
    } else if (key == ' ') {
      u = 1;
      v = 1;
      uOffset = 0;
      vOffset = 0;
    }
  }

  pushMatrix();
  translate(x, y, z);
  rotateY(yRotation);
  rotateX(xRotation);
  scale(scale);

  beginShape();

  texture(showDiagnosticImages ? front : txtr);
  vertex(-1, -1, 1, uOffset, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, 1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(showDiagnosticImages ? right : txtr);
  vertex(1, -1, 1, uOffset, vOffset);
  vertex(1, -1, -1, uOffset + u, vOffset);
  vertex(1, 1, -1, uOffset + u, vOffset + v);
  vertex(1, 1, 1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(showDiagnosticImages ? back : txtr);
  vertex(1, -1, -1, uOffset, vOffset);
  vertex(-1, -1, -1, uOffset + u, vOffset);
  vertex(-1, 1, -1, uOffset + u, vOffset + v); 
  vertex(1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(showDiagnosticImages ? left : txtr);
  vertex(-1, -1, -1, uOffset, vOffset);
  vertex(-1, -1, 1, uOffset + u, vOffset);
  vertex(-1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(showDiagnosticImages ? bottom : txtr);
  vertex(-1, 1, 1, uOffset, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset);
  vertex(1, 1, -1, uOffset + u, vOffset + v);
  vertex(-1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(showDiagnosticImages ? top : txtr);
  vertex(-1, -1, -1, uOffset, vOffset);
  vertex(1, -1, -1, uOffset + u, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset + v);
  vertex(-1, -1, 1, uOffset, vOffset + v);
  endShape(CLOSE);  
  popMatrix();
}

//This activates the movement of the cube in any way that the mouse cursor points to when hovered over the sketch.
void mousePressed() {
dirv1 = random(0, 100);
  dirv2 = random(0, 100);
  dirv3 = random(0, 100);
  println("directional: #" + hex(color(dirv1, dirv2, dirv3)).substring(2));
  
  ptv1 = random(0, 99);
  ptv2 = random(0, 99);
  ptv3 = random(0, 99);
  println("point: #" + hex(color(ptv1, ptv2, ptv3)).substring(2));
}


void mouseReleased() {
  if (mouseButton == LEFT) {
    showDiagnosticImages = !showDiagnosticImages;
  }
}
