/**
 * CSC-10026 Coursework a) Artwork sketch (15 %)
 *
 * An animated sketch inspired by Andy Warhol's
 * 'Campbell's Soup Cans', 1962. Animated using
 * 2D primitives, loops, if-statements and randomisation.
 *
 * @author litttleberry
 * @version 1.0 3.3.2022
 */


int x = 10;
int y = 60;
int bg = 232;
String label = "'Campbell's Soup Cans' by Andy Warhol, 1962. " +
  "Bring the colourful pop art to life my moving your mouse over the screen.";


/**
 * Setting up the scene. Display details, user guide and labels.
 */
void setup() {
  size(890, 580);
  background(bg);
  frameRate(1.5);

  fill(0);
  textAlign(CENTER, TOP);
  textSize(16);
  text(label, width/2, 20);
}

/**
 * Drawing and animating the artwork using 2D primitives.
 */
void draw() {
  // Frames
  for (x = 10; x <= width; x += 110) {
    for (y = 60; y <= height; y += 130) {
      fill(bg);
      stroke(155, 145, 123);
      strokeWeight(4);
      rect(x, y, 100, 120);
    }
  }

  // Soup tins
  for (x = 30; x <= width; x += 110) {
    for (y = 80; y <= height; y += 130) {
      if (mouseX >= x || mouseY >= y) {
        fill(random(255), random(255), random(255));
        stroke(188);
        strokeWeight(1);
      } else {
        fill(bg);
        stroke(bg);
      }
      rect(x, y, 60, 90, 0, 0, 25, 25);
      ellipse(x+30, y, 60, 20);
    }
  }
}
