int concentration = 600;
void settings()
{
   System.setProperty("jogl.disable.openglcore", "false");
   size(750, 750, P3D);
}
void setup(){
}

void draw(){
  
  pointLight(255, 255, 255, mouseX, mouseY, 1000);
  
  //SÃO 2 GRANDES JANELAS PRETAS
  background(50,50,200);
  strokeWeight(10);
  
  fill(200,80,20);
  rect(200, 200, 350, 550);
  
  fill(50,180,20);
  translate(130, 470);
  rect(200, 200, 50, 80);
  
  translate(250,200);
  rect(0, 0, 50, 80);
  
  fill(0,0,0);
  translate(5, 40);
  ellipse(0,0, 5,5);
  
  translate(-10, 0);
  ellipse(0,0, 5,5);
  
  translate(20, -450);
  rect(0, 0, 120, 50);
  
  translate(-160, 0);
  rect(0, 0, 120, 50);
  
  fill(180,50,50);
  translate(0, 100);
  rect(0, 0, 60, 50);
  
  translate(60, 0);
  rect(0, 0, 60, 50);
  
  fill(255,50,50);
  translate(100, 0);
  rect(0, 0, 60, 50);
  
  translate(60, 0);
  rect(0, 0, 60, 50);
  
  translate(0, 100);
  rect(0, 0, 60, 50);
  

  translate(-60, 0);
  rect(0, 0, 60, 50);
  
  translate(-300,-360);
  triangle(100,100,480,100,255,-50);
  
  translate(-30, 350);
  fill(200,80,80);
  rect(0, 0, 30, 300);
  //pointLight(0, 255, 0, mouseX, mouseY, 255);
  fill(0,255,0);
  translate(15,-80);
  ellipse(0,0,80,400);
  
  save("tarefa01.png");
}
