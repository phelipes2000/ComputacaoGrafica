void settings(){
  System.setProperty("jogl.disable.openglcore", "false");
  size(1000,1000, P3D); 
  
  
}
void desenhaRet(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  box(tamanho[0],tamanho[1], tamanho[2]);
  translate(-x, -y, z);

}

void desenhaEli(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  ellipse(tamanho[0],tamanho[1], tamanho[2], tamanho[3]);

  translate(-x, -y, -z);
  //rotateY(radians(60));
}
void desenhaTri(float x, float y, float z, float... tamanho){
  translate(x, y, z);
  triangle(tamanho[0],tamanho[1], tamanho[2], tamanho[3],tamanho[4], tamanho[5]);
  translate(-x, -y, -z);
  //rotateY(radians(60));
}
int tahAberto = 0;
int contadorTampaClosed = 0;
int contadorTampa = 0;
int teclaA = 0;
int teclaS = 0;
int teclaW = 0;
int teclaD = 0;
int teclaZ = 0;
int teclaX = 0;

void draw(){
  background(0,0,255);
  lights();
   pointLight(255, 255, 255, mouseX, mouseY, 700);
  ortho(-width/2, width/2, -height/2, height/2);
  if(keyPressed == true){
    if((key == 'a') || (key == 'A')) {
    teclaA-=20;
camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, ((width/2) / tan(PI/6))+teclaZ+teclaX, mouseX, mouseY, 0, 0, 1, 0);
  }
    else if((key == 'd') || (key == 'D')) {
    teclaD+=20;
camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, ((width/2) / tan(PI/6))+teclaZ+teclaX, mouseX, mouseY, 0, 0, 1, 0);
  }
      else if((key == 's') || (key == 'S')) {
    teclaS+=20;
camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, ((width/2) / tan(PI/6))+teclaZ+teclaX, mouseX, mouseY, 0, 0, 1, 0);
  }
      else if((key == 'w') || (key == 'W')) {
      teclaW-=20;
      camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, ((width/2) / tan(PI/6))+teclaZ+teclaX, mouseX, mouseY, 0, 0, 1, 0);
  }
        else if((key == 'z') || (key == 'Z')) {
      teclaZ-=20;
      camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, ((width/2) / tan(PI/6))+teclaZ+teclaX, mouseX, mouseY, 0, 0, 1, 0);
  }
    else if((key == 'x') || (key == 'X')) {
      teclaX+=20;
      camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, ((width/2) / tan(PI/6))+teclaZ+teclaX, mouseX, mouseY, 0, 0, 1, 0);
  }
  }
  else {
      camera((width/2)+teclaA+teclaD, (height/2)+teclaS+teclaW, ((width/2) / tan(PI/6))+teclaZ+teclaX, mouseX, mouseY, 0, 0, 1, 0);
  }
  
  fill(255,0,0);
  desenhaRet(width/2, height/2, 0 , 250,450,200);
  desenhaRet(500, 290,0, 255,10,210);

  //desenhaRet(500, 270, 0, 255,10,210);
  //desenhaRet(500, 250, 0, 56,5,5);
  //desenhaRet(475, 255, 0, 5,5,5);
  //desenhaRet(525, 255, 0, 5,5,5);
  
  
  //desenhaRet(400,730, 70, 30, 20,30);
  //desenhaRet(600,730, -70, 30, 20,30);
  //fill(255);
  //desenhaEli(350,200,101,200,200,70, 50);
  //desenhaEli(250,200,-99,200,200,70, 50);
  //fill(1);
  //desenhaEli(250,200,102,200,200,20, 20);
  //desenhaEli(350,200,-98,200,200,20, 20);
  //desenhaTri(width/2, height/2, 100, 0, 60, -50, 0, 50, 0);
  //fill(255);
  //desenhaRet(485,505, -100, 10, 10,10);
  //desenhaRet(495,505, 100, 10, 10,10);
  //desenhaRet(505,505, -100, 10, 10,10);
  //desenhaRet(515,505, 100, 10, 10,10);

///TAMPA

if((key == 'p')||(key == 'P')||(key == 'a') || (key == 'A')
||(key == 'd') || (key == 'D')||(key == 's') || (key == 'S')
||(key == 'w') || (key == 'W')||(key == 'z') || (key == 'Z')
||(key == 'x') || (key == 'X')
) {
    if((key == 'p')||(key == 'P')){
      tahAberto = 1;
      if(contadorTampa > 40){
        translate(500, 270-(40*1.5), -40*0.7);
        rotateX(radians(40));
        box(255, 10, 210);
        translate(-500, -270+(40*1.5), 40);
        tahAberto = 1;
        }
    else {
    translate(500, 270-(contadorTampa*1.5), -contadorTampa*0.7);
    rotateX(radians(contadorTampa));
    box(255, 10, 210);
    contadorTampa++;
    translate(-500, -270+(contadorTampa*1.5), contadorTampa);
    }
  }
      else if(tahAberto == 1) {
      translate(500, 270-(40*1.5), -40*0.7);
      rotateX(radians(40));
      box(255, 10, 210);
      translate(-500, -270+(40*1.5), 40);
      contadorTampa = 0;
    }
    else {
    contadorTampa = 0;
    tahAberto = 0;
    desenhaRet(500, 270, 0, 255,10,210);
  }
}
  else{
    if(tahAberto == 1) {
      tahAberto = 1;
      if(contadorTampaClosed > 40){
        desenhaRet(500, 270, 0, 255,10,210);
        contadorTampaClosed = 0;
        tahAberto = 0;
        }
      else {
      //translate(500, 270+(contadorTampaClosed*1.5)-(40*1.5), -40*0.7+contadorTampaClosed*0.7);
      translate(500, 270-(40*1.5)+(contadorTampaClosed*1.5), -40*0.7+(contadorTampaClosed*0.7));
      rotateX(radians(40-contadorTampaClosed));
      box(255, 10, 210);
      contadorTampaClosed++;
      translate(-500, 270-(contadorTampaClosed*1.5), -contadorTampaClosed);
      }
    }
    else{
      desenhaRet(500, 270, 0, 255,10,210);
      contadorTampa = 0;
      contadorTampaClosed = 0;
    }
  }
}
