//testing draw function

Avatar av;

void setup() {
  size(1024, 768);
  noStroke();
  av = new Avatar("cara1");
}

void draw() {
  background(200);
  drawCuadrantes();
  av.draw(width/2, height/4);
}

void drawCuadrantes() {
  fill(255, 220, 220);
  rect(0, 0, width/2, height/2);
  fill(220, 255, 220);
  rect(width/2, 0, width/2, height/2);
  fill(220, 255, 220);
  rect(0, height/2, width/2, height/2);
  fill(255, 220, 220);
  rect(width/2, height/2, width/2, height/2);
  fill(255, 0, 0);
  ellipse(width/2, height/2, 5, 5);
}
