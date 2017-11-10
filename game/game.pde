 int x,xx,y,yy,g,score,j;
 PImage img;
 
 void setup() {
    size(600,600);
    img = loadImage("pac.png");
    init();
}
 void draw() {
   
   if(g <= 40 )  { g++; }
    else { loose(); }
   if((mousePressed) && ((dist(mouseX,mouseY,x+15,y+15))<15))  
    {
     g = 0 ;
     score++;
     generate();
  }
   
   if(score >= 20 ) { win(); }
}
 void keyPressed(){
   if(keyCode == 'R') { init(); } 
 }
 
 void win() { 
     fill(255,255,255);
     ellipse(300,300,150,100);
     fill(0,128,0);
     text("EZ WIN EZ LIFE",257,285);
     text("double R TO RESTART",235,300);
     noLoop(); 
 }
 
 void loose() {
   fill(255,255,255);
     ellipse(300,300,150,100);
     fill(0,128,0);
     text("LOOOOOOOSE((((",257,285);
     text("double R TO RESTART",235,300);
     noLoop();
 }
  void generate() {
      background(0);
      fill(0);
       rect(45,37,100,20);
      fill(128,128,1);
      text("ScoreBoard:"+score, 50, 50);
      x = int(random (60,550));
      y = int(random (60,550));
      image(img,x,y,img.width/2.5,img.height/2.5);
    }
 void init() {
   g = 0;
   score = 0;
   loop();
   generate();
   
 }