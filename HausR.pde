color[] palette = {
  color(0), 
  color(40), 
  color(60), 
  color(90), 
  color(255), 
};
color getRandomColor() 
{
  int r = floor(random(0, palette.length));
  return palette[r];
}

void setup() {
  size(800, 800, P3D);
}

void draw() {
  noLoop();
  background(255);
  translate(width/2.0, height/2.0);
  int depth = 4;
  float scl = 50.0f;
  for (int x = -depth; x <= depth; x++) {
    for (int y = -depth; y <= depth; y++) {
      for (int z = -depth; z <= depth; z++) {
        if (random(0, 1) < 0.39f) {
          noFill();
          pushMatrix();
          translate(x * scl, y * scl, z * scl); 
          box(scl);
          popMatrix();
        } else if (random(0, 1) > 0.39f && random(0, 1) < 0.89f) {
                  fill(getRandomColor(), 200);

          pushMatrix();
          translate(x * scl, y * scl, z * scl); 
          box(scl/2);
          popMatrix();
        } else {
        fill(getRandomColor(), 200);

          pushMatrix();
          translate(x * scl, y * scl, z * scl); 
          box(scl/3);
          popMatrix();
        }
      }
    }
  }
}
