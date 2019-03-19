import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class HausR extends PApplet {

public void setup() {
  
  background(255);
  translate(width/2.0f, height/2.0f);
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
          pushMatrix();
          translate(x * scl, y * scl, z * scl);
          box(scl/2);
          popMatrix();
        } else {
          pushMatrix();
          translate(x * scl, y * scl, z * scl);
          box(scl/3);
          popMatrix();
        }
      }
    }
  }
}
  public void settings() {  size(800, 800, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "HausR" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
