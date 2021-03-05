float x = 500;
float y = 500;
float w = 100;
float h = 100;

color Red = color(255, 0, 0);
color rose = color(255, 0, 128);
color orange = color(255, 128, 0);

void setup() {
  size(500,500);
  background(255);
  noStroke();
  
}

void draw() {
  if (mousePressed == true) {
    ellipse(mouseX, mouseY, w, h);
    w *= 0.995;
    h = w;
 }
 
   if (mousePressed && key == 'R') {
      fill(Red);
   } 
   
   if (keyCode == LEFT) { //Press left arrow key then R to change hue to rose
     Red = rose;
   } else if (keyCode == RIGHT) { //Press right arrow key then R to change hue to orange
      Red = orange;
   } 
     if (keyCode == DOWN) { //Press down arrow key then R to change hue back to Red
      Red = color(255, 0, 0);
   } 
   
   println(key);
}
