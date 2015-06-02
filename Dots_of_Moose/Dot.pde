public class Dot {
  private float dotX, dotY = 0;
  private color hue = color(0);

  public Dot(float x, float y) {
    dotX = x;
    dotY = y;
  }

  public void update() {
    fill(hue);
    noStroke();
    ellipse(dotX, dotY, 2, 2);
  }

  public void attract(float x, float y) {
    float dir = 0;
    if (y < dotY) {
      dir = (float)Math.PI + atan((x-dotX)/(y-dotY));
    } else {
      dir = atan((x-dotX)/(y-dotY));
    }
    dotX += (50.0/sqrt((x-dotX)*(x-dotX)+(y-dotY)*(y-dotY)))*sin(dir);
    dotY += (50.0/sqrt((x-dotX)*(x-dotX)+(y-dotY)*(y-dotY)))*cos(dir);
    
    hue = color(map((50.0/sqrt((x-dotX)*(x-dotX)+(y-dotY)*(y-dotY))), 0, 5, 0, 1), .8, .8);
  }
}
