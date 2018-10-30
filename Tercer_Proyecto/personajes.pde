interface personajes{
  void display();
}

class cassette implements personajes{
  void display(){
    imageMode(CENTER);
    image(sprite1[f1],200,150);
    f1=(f1+1)%sprite1.length;
  }
}

class vinil implements personajes{
  void display(){
    imageMode(CENTER);
    image(sprite2[f2],200,150);
    f2=(f2+1)%sprite2.length;
  }
}

class cd implements personajes{
  void display(){
    imageMode(CENTER);
    image(sprite3[f3],200,150);
    f3=(f3+1)%sprite3.length;
  }
}

class usb implements personajes{
  void display(){
    imageMode(CENTER);
    image(sprite4[f4],200,150);
    f4=(f4+1)%sprite4.length;
  }
}

class stream implements personajes{
  void display(){
    imageMode(CENTER);
    image(sprite5[f1],200,150);
    f5=(f5+1)%sprite4.length;
  }
}
