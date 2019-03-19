int depth = 4;
float scl = 50.0f;
float r;

void setup() {
  size(800, 800, P3D);
  noLoop();
  translate(width/2.0, height/2.0);
  background(255);
  fill(0, 200);
  noStroke();
  lights();
  for (int x = -depth; x <= depth; x++) {
    for (int y = -depth; y <= depth; y++) {
      for (int z = -depth; z <= depth; z++) {
        
        r = random(0.0f, 1.0f);
        if (r < 0.2f) {

          pushMatrix();
          translate(x * scl, y * scl, z * scl);
          box(scl, scl/6.0f, scl/6.0f);
          popMatrix();
        } else if (r > 0.2f && r < 0.5f) {

          pushMatrix();
          translate(x * scl, y * scl, z * scl);
          box(scl, scl/16.0f, scl/16.0f);
          popMatrix();
          pushMatrix();
          translate(x * scl, y * scl, z * scl);
          box(scl/26, scl/26, scl);
          popMatrix();
        } else {
          rotateY(random(TAU));

          pushMatrix();
          translate(x * scl, y * scl, z * scl);
          box(scl/26, scl/26, scl);
          popMatrix();
          pushMatrix();
          translate(x * scl, y * scl, z * scl);
          box(scl/26, scl, scl/26);
          popMatrix();
        }
      }
    }
  }
  save("haus-r-"+r+".jpg");
}

void renderBoundingBox(int x, int y, int z, float scl) {
  pushMatrix();
  translate(x * scl, y * scl, z * scl);
  box(scl);
  popMatrix();
}

void renderMidPoint(int x, int y, int z, float scl) {
  pushMatrix();
  translate(x * scl, y * scl, z * scl);
  sphere(2);
  popMatrix();
}

void renderLeftPoint(int x, int y, int z, float scl) {
  pushMatrix();
  translate(x * scl, y * scl, z * scl);
  translate(-scl * 0.5f, 0, 0);
  sphere(2);
  popMatrix();
}

void renderRightPoint(int x, int y, int z, float scl) {
  pushMatrix();
  translate(x * scl, y * scl, z * scl);
  translate(scl * 0.5f, 0, 0);
  sphere(2);
  popMatrix();
}
