import processing.sound.*;
PFont poor;
int P=1,J1,J2,turno=0;
float atk1,atk2,vida1,vida2;
float s1,s2,s3,s4,s5; //Escaladores para personajes
int f1,f2,f3,f4,f5; //Reseteadores de frames para los sprites
PImage[] sprite1 = new PImage[3];
PImage[] sprite2 = new PImage[3]; 
PImage[] sprite3 = new PImage[3]; 
PImage[] sprite4 = new PImage[3]; 
PImage[] sprite5 = new PImage[3]; 
PImage fondoBatalla,fondoFinal;

SoundFile cancion;

personajes cassette;
personajes vinil;
personajes cd;
personajes usb;
personajes stream;

pantallas pantallas;

void setup(){
  size(800,450);
  pantallas = new pantallas();
  cassette = new cassette();
  vinil = new vinil();
  cd = new cd();
  usb = new usb();
  stream = new stream();
  fondoBatalla = loadImage("Fondo Batalla.png");
  fondoFinal = loadImage("fondo2.png");
  cancion = new SoundFile(this,"8 bits.wav");
  cancion.loop();
  poor = loadFont("PoorStory-Regular-48.vlw");
  
  
  for (int i = 0; i<sprite1.length; i+=1){
    sprite1[i] = loadImage((i+1)+"cassette.png");
  }
  
  for (int i = 0; i<sprite2.length; i+=1){
    sprite2[i] = loadImage((i+1)+"vinil.png");
  }
  
  for (int i = 0; i<sprite3.length; i+=1){
    sprite3[i] = loadImage((i+1)+"cd.png");
  }
  
  for (int i = 0; i<sprite4.length; i+=1){
    sprite4[i] = loadImage((i+1)+"u.png");
  }
  
  for (int i = 0; i<sprite5.length; i+=1){
    sprite5[i] = loadImage((i+1)+"stream.png");
  }
}

void draw(){
  pantallas.display();
  pantallas.input();
}
