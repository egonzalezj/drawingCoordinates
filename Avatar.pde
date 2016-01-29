final int Joints = 3;

class Avatar {
  private  PShape     puppet;
  private  float      x, y;  //
  private  float      px, py; //current relative puppet center (puppet position)
  private  float      cx, cy; //absolute puppet center
  private  PVector[]  p = {new PVector(125, 100), new PVector(275, 100), new PVector(200, 260)};
  private  int        angleAvatar = 0;
  
  Avatar(String name) {
    puppet = loadShape(name + ".svg");
    this.cx = puppet.width/2;
    this.cy = puppet.height/2;
    this.x = width/2;
    this.y = height/2;
  }
  
  private void coordinates() {
    this.x -= this.cx;
    this.y -= this.cy;
  }
  
  public int joints() {
    return Joints;
  }
  
  public void draw() {
    coordinates();
    shape(puppet, this.x, this.y);
    println("x=" + this.x + ", " + "y=" + this.y);
  }
  
  public void draw(float x, float y) {
    this.x = x;
    this.y = y;
    this.draw();
  }
  
  public void draw(float[] p) {
    assert(p.length == 2);
    this.x = p[0];
    this.y = p[1];
    this.draw();
  }
  
  public void drawPivots(float x, float y) {
    this.draw(x, y);
    for(int i=0; i < this.joints(); i++) {
      fill(255, 100, 80);
      translate(-this.cx + x, -this.cy + y);
      ellipse(p[i].x, p[i].y, 10, 10);
      translate(this.cx - x, this.cy - y);
    }
  }
  
  public void rotateAvatar(int angle) {
    this.puppet.translate(this.cx, this.cy);
    this.puppet.rotate(radians(angle));
    this.puppet.translate(-this.cx, -this.cy);
    this.angleAvatar += angle ;
  }
  
  public int getAngleAvatar() {
    return this.angleAvatar;
  } 
}
