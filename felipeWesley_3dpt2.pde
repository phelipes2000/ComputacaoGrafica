void settings(){
  System.setProperty("jogl.disable.openglcore", "false");
  size(1000,1000, P3D); 
  
  
}
void desenhaRet(float x, float y, float z, float... tamanho){
  pushMatrix();
  translate(x, y, z);
  box(tamanho[0],tamanho[1], tamanho[2]);
  translate(-x, -y, -z);
  popMatrix();

}

void desenhaEli(float x, float y, float z, float... tamanho){
  pushMatrix();
  translate(x, y, z);
  ellipse(tamanho[0],tamanho[1], tamanho[2], tamanho[3]);
  popMatrix();

  translate(-x, -y, -z);
}
void desenhaTri(float x, float y, float z, float... tamanho){
  pushMatrix();
  translate(x, y, z);
  triangle(tamanho[0],tamanho[1], tamanho[2], tamanho[3],tamanho[4], tamanho[5]);
  translate(-x, -y, -z);
  popMatrix();
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
  //pointLight(255, 255, 255, mouseX, mouseY, 700);
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
  
  ///////////////////////////////////////////////////////////
  //Corpo da lixeira
  fill(255,0,0);
  noStroke();
  desenhaRet(380, height/2, 0 , 10,450,200);
  desenhaRet(500, height/2, -100 , 250,450,10);
  desenhaRet(500, height/2, 97 , 250,450,10);
  desenhaRet(620, height/2, 0 , 10,450,200);
  desenhaRet(500, 720, 0, 250, 10,200);
  desenhaRet(425, 740, 0, 98,30,201);
  desenhaRet(575, 740, 0, 98,30,201);
  fill(150,0,0);
  desenhaRet(500, 290, -110, 255,10,10);
  desenhaRet(500, 290, 105, 255,10,10);
  desenhaRet(375, 290, 0, 10,10,220);
  desenhaRet(625, 290, 0, 10,10,220);
  fill(255,0,0);
  //desenhaRet(500, 270, 0, 255,10,210);
  ///////////////////////////////////////////////

  

///TAMPA
fill(150,0,0);
if((key == 'p')||(key == 'P')||(key == 'a') || (key == 'A')
||(key == 'd') || (key == 'D')||(key == 's') || (key == 'S')
||(key == 'w') || (key == 'W')||(key == 'z') || (key == 'Z')
||(key == 'x') || (key == 'X')
) {
    if((key == 'p')||(key == 'P')){
      tahAberto = 1;
      if(contadorTampa > 40){
        pushMatrix();
        translate(500, 270-(40*1.5), -40*0.7);
        rotateX(radians(40));
        box(255, 10, 210);
        translate(-500, -270+(40*1.5), 40);
        popMatrix();
        tahAberto = 1;
        }
    else {
     pushMatrix();
    translate(500, 270-(contadorTampa*1.5), -contadorTampa*0.7);
    rotateX(radians(contadorTampa));
    box(255, 10, 210);
    contadorTampa++;
    translate(-500, -270+(contadorTampa*1.5), contadorTampa);
    popMatrix();
    }
  }
      else if(tahAberto == 1) {
        pushMatrix();
      translate(500, 270-(40*1.5), -40*0.7);
      rotateX(radians(40));
      box(255, 10, 210);
      translate(-500, -270+(40*1.5), 40);
      popMatrix();
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
      pushMatrix();
      translate(500, 270-(40*1.5)+(contadorTampaClosed*1.5), -40*0.7+(contadorTampaClosed*0.7));
      rotateX(radians(40-contadorTampaClosed));
      box(255, 10, 210);
      contadorTampaClosed++;
      translate(-500, 270-(contadorTampaClosed*1.5), -contadorTampaClosed);
      popMatrix();
      }
    }
    else{
      desenhaRet(500, 270, 0, 255,10,210);
      contadorTampa = 0;
      contadorTampaClosed = 0;
    }
  }
}
