//attributed to the folder example, lesson_6D_Objects.

SnowFlurry[] ws;
int count;

void setup() {
  surface.setResizable(true);
  surface.setTitle("Objects");
  pixelDensity(displayDensity());
  size(700, 700);
  background(200);
  colorMode(RGB, 200, 200, 255);
 
 //This controls how concentrated the snow flurries are in their background space.
  count = max(width, height) / 1;
  ws = new SnowFlurry[count];
  for(int i = 0; i < count; ++i) {
    ws[i] = new SnowFlurry();
  }
}

void draw() {
  fill(0, 0, 100, 100);
  rect(0, 0, width, height);
  
  for(int i = 0; i < count; ++i) {
    ws[i].draw();
  }
}
