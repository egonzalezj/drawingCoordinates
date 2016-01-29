//testing draw function

Avatar av;
int x = 0;

void setup() {
  size(1024, 768);
  noStroke();
  av = new Avatar("cara1");
  //av.rotateAvatar(60);
  //println(av.getAngleAvatar());
}

void draw() {
  background(200);
  drawCuadrantes();
  av.draw();
  //av.draw(width/2, height/4);
  //av.drawPivots(width/2, height/2);
  //av.drawPivots(width/2 + x, height/2);
  //x++;
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
