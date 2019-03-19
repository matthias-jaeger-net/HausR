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
  
}
public void draw() {
  noLoop();
  noFill();
  translate(width/2.0f, height/2.0f);
  background(255);

  int depth = 4;
  float scl = 50.0f;

  for (int x = -depth; x <= depth; x++) {
    for (int y = -depth; y <= depth; y++) {
      for (int z = -depth; z <= depth; z++) {
        pushMatrix();
        translate(x * scl, y * scl, z * scl);
        // Base
        box(scl);

        // Left Middle Point
        translate(-scl * 0.5f, 0, 0);
        ellipse(scl/2);

        // Right Middle Point
        translate(scl * 1.0f, 0, 0);
        ellipse(scl/2);

        // Top Point
        translate(-scl * 0.5f + random(-4, 4), -scl * 0.5f, 0);
        ellipse(scl/2);

        // Bottom Point
        translate(-scl * 0.5f, scl * 1.0f, 0);
        box(scl/2);


        popMatrix();
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
