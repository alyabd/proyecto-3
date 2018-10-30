class pantallas{
  int P=0;
  int y,y1=800; //Mover texto
  int tf=30,cf,tl=1; //Tamaño de fuente variable en "Jugar"
  
  void pantalla1(){ 
  frameRate(30);  
  //Efecto de estrellas
  fill(0,25);
  rect(0,0,width,height);
  fill(255);
  noStroke();
  ellipse(random(width),random(height),10,10);
 
  textFont(poor);
  textAlign(CENTER, BOTTOM);
  textSize(100);
  fill(255);
  textLeading(80);
  text("GUERRA DE \nFORMATOS",400,y);
  if(y<=250){
    y=y+2;
  }
  
  fill(cf);
  textSize(tf);
  text("JUGAR",400,y1);
  if(y1>=350){
    y1=y1-3;
  }
  
  if(mouseX>348 && mouseX<448 && mouseY>315 && mouseY<340){
    tf=50;
    cf=255;
  }
    else{
      tf=30;
      cf=200;
    }
  }
  
  void select1(){
  if (P==1){
    if (mousePressed && mouseX>0 && mouseX<160 && mouseY>0 && mouseY<450){ //Cassette
        J1 = 1;
        vida1 = 23;
        atk1 = random(3);
        println("Selección Correcta J1");
    }
    if (mousePressed && mouseX>160 && mouseX<320 && mouseY>0 && mouseY<450){ //Vinil
        J1 = 2;
        vida1 = 21;
        atk1 = random(4);
    }
    if (mousePressed && mouseX>320 && mouseX<480 && mouseY>0 && mouseY<450){ //CD
        J1 = 3;
        vida1 = 25;
        atk1 = random(5);
    }
    if (mousePressed && mouseX>480 && mouseX<640 && mouseY>0 && mouseY<450){ //USB
        J1 = 4;
        vida1 = 22;
        atk1 = random(6);
    }
    if (mousePressed && mouseX>640 && mouseX<800 && mouseY>0 && mouseY<450){ //Streaming
        J1 = 5;
        vida1 = 24;
        atk1 = random(2);
    }
  }
  }
  
  void select2(){
  if (P==1){
    if (keyPressed){
      if(key=='1'){
        J2 = 1;
        vida2 = 23;
        atk2 = random(3);
      }
      if(key=='2'){
        J2 = 2;
        vida2 = 21;
        atk2 = random(4);
        println("Selección Correcta J2");
      }
      if(key=='3'){
        J2 = 3;
        vida2 = 25;
        atk2 = random(5);
      }
      if(key=='4'){
        J2 = 4;
        vida2 = 22;
        atk2 = random(6);
      }
      if(key=='5'){
        J2 = 5;
        vida2 = 24;
        atk2 = random(2);
      }
    }
  }
  }
  void pantalla2(){
  frameRate(7);
  imageMode(CENTER);
  fill(50);
  rect(0,0,width,height);
 
  textAlign(CENTER, BOTTOM);
  textSize(30);
  fill(255);
  text("Escoge tu formato",400,50);
  
  textAlign(CENTER,TOP);
  textSize(30);
  fill(255);
  text("J1:Mouse+Click  ||  J2:Teclea Número ",400,60);
  textSize(50);
  text("1",50,350);
  text("2",200,350);
  text("3",360,350);
  text("4",535,350);
  text("5",715,350);
  
  pushMatrix();
  imageMode(CENTER);
  scale(.4);
  translate(-50,400);
  cassette.display();
  popMatrix();
  
  pushMatrix();
  imageMode(CENTER);
  scale(.4);
  translate(275,400);
  vinil.display();
  popMatrix();
  
  pushMatrix();
  imageMode(CENTER);
  scale(.4);
  translate(700,400);
  cd.display();
  popMatrix();
  
  pushMatrix();
  imageMode(CENTER);
  scale(.4);
  translate(1150,400);
  usb.display();
  popMatrix();
  
  pushMatrix();
  imageMode(CENTER);
  scale(.4);
  translate(1600,400);
  stream.display();
  popMatrix();
  
  if(mouseX>14 && mouseX<110 && mouseY>127 && mouseY<290){
    fill(255,50);
    rect(0,0,110,450);
  }
  
  if(mouseX>149 && mouseX<240 && mouseY>127 && mouseY<290){
    fill(255,50);
    rect(110,0,160,450);
  }
  
  if(mouseX>304 && mouseX<410 && mouseY>127 && mouseY<290){
    fill(255,50);
    rect(270,0,175,450);
  }

  if(mouseX>480 && mouseX<600 && mouseY>127 && mouseY<290){
    fill(255,50);
    rect(445,0,175,450);
  }
  
  if(mouseX>670 && mouseX<750 && mouseY>127 && mouseY<290){
    fill(255,50);
    rect(620,0,180,450);
  }
  
  select1();
  select2();
  
}

  void pantalla3(){
  background(0);
  imageMode(CENTER);
  image(fondoBatalla,400,225);
  fill(244,55,33);
  textAlign(CENTER,CENTER);
  textSize(30);
  text("VS",400,20);
  
  if(J1==1){
  pushMatrix();
  scale(.5);
  translate(50,300);
  cassette.display();
  popMatrix();
  }
  if(J1==2){
  pushMatrix();
  scale(.5);
  translate(50,300);
  vinil.display();
  popMatrix();
    
  }
  if(J1==3){
  pushMatrix();
  scale(.5);
  translate(50,300);
  cd.display();
  popMatrix();
  }
  if(J1==4){
  pushMatrix();
  scale(.5);
  translate(50,300);
  usb.display();
  popMatrix();
  }
  if(J1==5){
  pushMatrix();
  scale(.5);
  translate(50,300);
  stream.display();
  popMatrix();
  }
  
  //Jugador 2
  if(J2==1){
  pushMatrix();
  scale(.5);
  translate(1100,300);
  cassette.display();
  popMatrix();
  }
  if(J2==2){
  pushMatrix();
  scale(.5);
  translate(1100,300);
  vinil.display();
  popMatrix();
  }
  if(J2==3){
  pushMatrix();
  scale(.5);
  translate(1100,300);
  cd.display();
  popMatrix();
  }
  if(J2==4){
  pushMatrix();
  scale(.5);
  translate(1100,300);
  usb.display();
  popMatrix();
  }
  if(J2==5){
  pushMatrix();
  scale(.5);
  translate(1100,300);
  stream.display();
  popMatrix();
  }
  
  //Pelea. Turno 0=J1
  if(turno==0 && keyPressed){
    if (key=='z'){
      vida2 = vida2 - atk1;
      turno=1;
    }
  }
  
  if(turno==1 && keyPressed){
    if (key=='m'){
      vida1 = vida1 - atk2;
      turno=0;
    }
  }
  
  //Mostrar Vida
  fill(136,255,103);
  rect(0,0,vida1*15,25);
  rect(800,0,-vida2*15,25);
  textSize(25);
  fill(200);
  text("\nATK: Z",162,400);
  text("\nATK: M",620,400);
  
  if(vida1<=0 || vida2<=0){
    P=3;
   }
 }
  
  void pantalla4(){
  frameRate(30);
  image(fondoFinal,400,225);
  fill(255,100);
  rect(0,0,width,height);
  textAlign(CENTER,CENTER);
  textSize(tl);
  
  if(vida2<=0){
    fill(255);  
    text("JUGADOR 1 \nES EL \nGANADOR", 400,175);
    if(tl<=75){
      tl+=5;
    }
  }
  
  if(vida1<=0){
    fill(255);  
    text("JUGADOR 2 \nES EL \nGANADOR", 400,175);
    if(tl<=75){
      tl+=5;
    }
  }
  
  textSize(30);
  fill(255);
  text("Pulsa Espacio para volver a jugar",400,400);
  
  if (keyPressed && key==' '){        //P=1,J1,J2,turno=0; float atk1,atk2,vida1,vida2;
    J1=0;
    J2=0;
    atk1=0;
    atk2=0;
    vida1=0;
    vida2=0;
    P=0;
    y=0;
    y1=800;
    tl=1;
  }
    
  }
  
  void display(){
    switch(this.P){
      case 0:
      pantalla1();
      break;
      case 1:
      pantalla2();
      break;
      case 2:
      pantalla3();
      break;
      case 3:
      pantalla4();
      break; 
    }
  }
  
  void input(){
    if(P==0){
    pantalla1();
    if (mousePressed && mouseX>348 && mouseX<448 && mouseY>315 && mouseY<340){
      P=1;
    }
  }
  
  if(P==1){
    pantalla2();
    if(J1!=0 && J2!=0){
      P=2;
    }
  }
  
  if(P==2){
    pantalla3();
  }
  
  if(P==3){
    pantalla4();
  }
  }   
}
