import fisica.*;
PImage maps;

int x = 0;
int y = 0;

FWorld world;

void setup() {
  Fisica.init(this);
  world = new FWorld();

  maps = loadImage("map.png");

  while (y < maps.height) {

    color c = maps.get(x, y);
    println(c);
    x++;
    if (x == maps.width) {
      x = 0;
      y++;
    }
  }
}
