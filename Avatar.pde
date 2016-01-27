class Avatar {
  private  PShape puppet;
  private  float  x, y;
  private  float  cx, cy;
  
  Avatar(String name) {
    puppet = loadShape(name + ".svg");
    this.cx = puppet.width/2;
    this.cy = puppet.height/2;
    this.x = width/2;
    this.y = height/2;
  }
  
  public void draw() {
    translate(-cx, -cy);
    shape(puppet, this.x, this.y);
    translate(cx, cy);
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
}
