void settings()
{
   System.setProperty("jogl.disable.openglcore", "false");
   size(750, 750, P3D);
}
void setup(){
}

void draw(){
  
  pointLight(255, 255, 255, mouseX, mouseY, 500);
  
  background(100,100,100);
  
  fill(130,200,150);
  translate(475,475);
  box(100);
  translate(-100, -100);
  fill(100,140,250);
  noStroke();
  sphere(80);
  fill(240,200,200);
  translate(-175,-175);
  rotate(mouseX);
  box(60);
  
 
}
