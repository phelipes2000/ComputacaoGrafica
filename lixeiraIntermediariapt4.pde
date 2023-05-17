int contadorOlhos = 0;
int contadorTampa = 0;

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
  
  fill(255,0,0);
  stroke(255,0,0);
  
  ellipse(305, 495,10,10);
  ellipse(495, 495,10,10);
  
  fill(255);
  
  
  //inicio olhos
    if(key == '4'){
      contadorOlhos = contadorOlhos + 1;
      println(contadorOlhos);
      //esquerdo pisca
      if (contadorOlhos < 50) {
        ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        ellipse(450, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        ellipse(455, 295, 5,5);
      }
      else if (contadorOlhos <= 90){
        fill(0);
        rect(315,300, 70, 10);
        fill(255);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(450, 300, 20,25);
        fill(255);
        ellipse(455, 295, 5,5);
        if (contadorOlhos == 90) {
          contadorOlhos = 0;
        }
      }
    }
    else if(key == '6'){
      //direito pisca
        
      contadorOlhos = contadorOlhos + 1;
      println(contadorOlhos);
      //esquerdo pisca
      if (contadorOlhos < 50) {
        ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        ellipse(450, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        ellipse(455, 295, 5,5);
      }
      else if (contadorOlhos <= 90){
        fill(0);
        rect(415, 300, 70, 10);
        fill(255);
        ellipse(350, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        if (contadorOlhos == 90) {
          contadorOlhos = 0;
        }
      }
    }
    else{
        ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 300, 20,25);
        ellipse(450, 300, 20,25);
        fill(255);
        ellipse(355, 295, 5,5);
        ellipse(455, 295, 5,5);
    }
  stroke(0);
  //fim olhos
  
  //inicio boca
  stroke(0);
  fill(0);
  triangle(350, 400, 450, 400, 400, 450);
  fill(255);
  rect(370, 400, 15,15);
  rect(385, 400, 15,15);
  rect(400, 400, 15,15);
  rect(415, 400, 15,15);
  //fim boca
  
    //inicio tampa
  fill(255,0,0);
  if(keyPressed == true) {
    if((key == 'p') || (key == 'P')){
      
      contadorTampa++;
      stroke(255,255,0);
      rect(280,200, 240, 15);
      line(280,215, 520,215);
      stroke(255,0,0);
      beginShape();
      vertex(282,200);
      vertex(310, 180);
      vertex(490, 180);
      vertex(518, 200);
      endShape();
      beginShape();
      stroke(255,255,0);
      vertex(310, 180);
      vertex(282, 130);
      vertex(522, 130);
      vertex(490, 180);
      endShape();
      rect(282,115, 240, 15);
      
      beginShape();
      stroke(255, 255,0);
      fill(0);
      vertex(312, 175);
      vertex(289, 135);
      vertex(513, 135);
      vertex(488, 175);
      vertex(312,175);
      endShape();
      if(contadorTampa >= 180) {
        noStroke();
        //inicio lixo
          fill(#D3D3D3);
          rect(300, 195, 40, 50);
          fill(#87CEEB);
          rect(340,180, 30,20);
          fill(#708090);
          ellipse(355, 190, 20,10);
          fill(#A0522D);
          rect(430, 160,80,40);
        
        //fim lixo
        
        //inicio olhos
        
        fill(255);
        ellipse(350, 300, 70,50);
        ellipse(450, 300, 70,50);
        stroke(0);
        fill(0);
        ellipse(350, 290, 20,25);
        ellipse(450, 290, 20,25);
        fill(255);
        ellipse(355, 285, 5,5);
        ellipse(455, 285, 5,5);
         //fim olhos
         
        //inicio boca
        noStroke();
        fill(255,0,0);
        rect(350,350, 120,120);
        fill(0);
        ellipse(400, 400, 100, 30);
        fill(255,0,0);
        ellipse(400, 430, 60, 50);
        //fim boca
        if(contadorTampa >= 240) {
            //inicio olhos
            noStroke();
            fill(255);
            ellipse(350, 300, 70,50);
            ellipse(450, 300, 70,50);
            stroke(0);
            fill(0);
            ellipse(350, 290, 20,25);
            ellipse(450, 290, 20,25);
            fill(255);
            ellipse(355, 285, 8,8);
            ellipse(455, 285, 8,8);
             //fim olhos
             
            //inicio boca
            noStroke();
            fill(255,0,0);
            rect(320,350, 150,120);
            fill(0);
            rect(350, 400, 100, 10);
            //fim boca
      }
      }
    }
   else{
  stroke(255,255,0);
  rect(280,185, 240, 30);
  line(280,200, 520,200);
  stroke(255,0,0);

   }
  }
  else{
  contadorTampa = 0;
  stroke(255,255,0);
  rect(280,185, 240, 30);
  line(280,200, 520,200);
  stroke(255,0,0);
  }
  //fim tampa
  
  noStroke();
  
  //inicio pedal
  if(keyPressed == true) {
    if((key == 'p') || (key == 'P')) {
        fill(#666666);
        rect(380,500,40,10);
        fill(#C0C0C0);
        rect(390,470,20,30);
    }
    else {
        fill(#666666);
        rect(380,480,40,10);
        fill(#C0C0C0);
        rect(390,470,20,10);
    }
  }
  else{
      fill(#666666);
      rect(380,480,40,10);
      fill(#C0C0C0);
      rect(390,470,20,10);
  }
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
