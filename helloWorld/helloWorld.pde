void setup() {
  size(600, 400);
}

void draw() {
  background(255, 255, 255);
  fill(0, 0, 255);
  String message="hello world";
  textSize(36);
  float textW = textWidth(message);
  text(message, mouseX-textW/2, mouseY);
}

