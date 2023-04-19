void setup(){
  size(800,800);
  






}

void draw(){
  background(255,255,255);
  beginShape();
  fill(255,0,0);
  stroke(255,0,0);
  vertex(300, 492);
  vertex(290, 200);
  vertex(510, 200);
  vertex(500, 492);
  vertex(493,492);
  vertex(493,500);
  vertex(420, 500);
  
  vertex(420,470);
  vertex(380,470);
  vertex(380, 500);
  vertex(307, 500);
  vertex(307,492);
  vertex(300,492);
  
  endShape();
  //inicio tampa
  stroke(255,255,0);
  rect(280,200, 240, 30);
  line(280,215, 520,215);
  stroke(255,0,0);
  ellipse(305, 495,10,10);
  ellipse(495, 495,10,10);
  //fim tampa
  
  fill(255);
  
  //inicio olhos
  ellipse(350, 300, 70,50);
  ellipse(450, 300, 70,50);
  stroke(0);
  fill(0);
  ellipse(350, 300, 20,25);
  ellipse(450, 300, 20,25);
  fill(255);
  ellipse(355, 295, 5,5);
  ellipse(455, 295, 5,5);
  //fim olhos
  
  //inicio boca
  fill(0);
  triangle(350, 400, 450, 400, 400, 450);
  fill(255);
  rect(370, 400, 15,15);
  rect(385, 400, 15,15);
  rect(400, 400, 15,15);
  rect(415, 400, 15,15);
  //fim boca
  
  noStroke();
  
  //inicio pedal
  fill(#666666);
  rect(380,480,40,10);
  fill(#C0C0C0);
  rect(390,470,20,10);
  //fim pedal
  
  fill(0);
  
  ellipse(330, 525, 40, 40);
  ellipse(470, 525, 40, 40);
  
  fill(#CCCCCC);
  rect(325, 500, 40,20);
  ellipse(330, 525, 20, 20);
  rect(435, 500, 40,20);
  ellipse(470, 525, 20, 20);
  
  
}
