import processing.serial.*;
import java.util.*;
import ddf.minim.*;
AudioPlayer player,player1,player2,player3,player4;
Minim minim,minim1,minim2,minim3,minim4;

Serial myPort;   
int yourValue = 100;
ArrayList<Integer> inputList = new ArrayList<Integer>();
int next = 0;
int next1 = 0;
int next2 = 0;
int next3 = 0;
int next4 = 0;

void setup(){
  size(1500,900); 
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[0], 9600); myPort.bufferUntil('\n');
  println("NUSHS ENGINEERING INTEREST GROUP");
  println("Welcome to Piano Glove 2015,");
  println("try moving your fingers!");
  println("");
  for(int x =0;x<5;x++){
    inputList.add(0);
    }
  minim = new Minim(this);
  minim1 = new Minim(this);
  minim2 = new Minim(this);
  minim3 = new Minim(this);
  minim4 = new Minim(this);
  player = minim.loadFile("C.mp3");
  player1 = minim.loadFile("D.mp3");
  player2 = minim.loadFile("E.mp3");
  player3 = minim.loadFile("F.mp3");
  player4 = minim.loadFile("G.mp3");
  
}

void draw(){
  PImage img = loadImage("bigkeyboards.jpg");
  background(img); 
  fill(255,255,0);
  ellipse(250,700,inputList.get(0)*250,inputList.get(0)*250);
  ellipse(500,300,inputList.get(1)*250,inputList.get(1)*250);
  ellipse(750,700,inputList.get(2)*250,inputList.get(2)*250);
  ellipse(1000,300,inputList.get(3)*250,inputList.get(3)*250);
  ellipse(1250,700,inputList.get(4)*250,inputList.get(4)*250);
  
  if(inputList.get(0) == 1 && next == 0 )
  { 
    next = 1;
    player = minim.loadFile("C.mp3");
    player.play();
  }
  else if(inputList.get(0)== 0){
    next = 0;
  }
   
    if(inputList.get(1) == 1 && next1 == 0 )
  { 
    next1 = 1;
    player1 = minim2.loadFile("D.mp3");   
    player1.play();
  }
  else if(inputList.get(1)== 0){
    next1 = 0;
  }
  
    if(inputList.get(2) == 1 && next2 == 0 )
  { 
    next2 = 1;
    player2 = minim2.loadFile("E.mp3");   
    player2.play();
  }
  else if(inputList.get(2)== 0){
    next2 = 0;
  }
  
    if(inputList.get(3) == 1 && next3 == 0 )
  { 
    next3 = 1;
    player3 = minim3.loadFile("F.mp3");   
    player3.play();
  }
  else if(inputList.get(3)== 0){
    next3 = 0;
  }
  
    if(inputList.get(4) == 1 && next4 == 0 )
  { 
    next4 = 1;
    player4 = minim4.loadFile("G.mp3");   
    player4.play();
  }
  else if(inputList.get(4)== 0){
    next4 = 0;
  }
  
}

void serialEvent(Serial myPort){
  String inString = myPort.readStringUntil('\n');
   if (inString != null){
    inString = trim(inString);
    Scanner lala = new Scanner(inString);
   for(int x = 0; x< 5; x++){
     inputList.add(x,lala.nextInt());
    }
   }
  
}






