//declare bacteria variables here   
 Bacteria [] bob = new Bacteria[7];
 Cheese ben;
int x, y;

 void setup()   
 {     
   //initialize bacteria variables here   

   size(800, 800);
   bob = new Bacteria[7];
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria(color(255, 0, 0), (int)(Math.random()*400 + 200), (int)(Math.random()*400 + 200));
   }
   ben = new Cheese(mouseX, mouseY);
   
 }   
 
 
 void draw()   
 {    
   //move and show the bacteria   
   background(0);
   for(int i = 0; i < bob.length; i++){
     bob[i].move();
     bob[i].show();
     ben.show2();
     ben.move2();
   }
 }  
   
 
 class Cheese
 {
   int myX2;
   int myY2;
   //color myC2;
   
   Cheese(int x2, int y2){
     //myC2 = C;
     myX2= x2;
     myY2 = y2;
   }
   void move2(){
   myX2 = mouseX;
   myY2 = mouseY;
   }
 
 
 void show2(){
   noStroke();
   fill(255, 197, 36);
   ellipse(myX2, myY2, 100, 100);
   fill(175, 140, 40);
   ellipse(myX2 - 13, myY2 + 32, 10, 10);
   ellipse(myX2 - 18, myY2 - 20, 23, 23);
   ellipse(myX2 + 20, myY2 - 15, 25, 25);
   ellipse(myX2 - 23, myY2 + 18, 15, 15);
   ellipse(myX2 + 19, myY2 + 15, 16, 16);
   }
 
 
   //lots of java!   
 }    
 
 class Bacteria    
 { 
   int myX;
   int myY;
   color myC;

   Bacteria(color c, int x, int y){
     myC = c;
     myX = x;
     myY = y;

   }

 
 void move(){
   if (mouseX > myX){
     myX = myX + (int)(Math.random()*10 - 2);
   }
   if (mouseX < myX){
     myX = myX + (int)(Math.random()*10 - 8);
   }
   if (mouseY > myY){
     myY = myY + (int)(Math.random()*10 - 2);
   }
   if (mouseY < myY){
     myY = myY + (int)(Math.random()*10 - 8);
   }
   if (mouseX == myX){
     myX = mouseX;
   }
   if (mouseY == myY){
     myY = mouseY;
   }
 }
 
 void show(){
   fill(255);
   ellipse(myX, myY, 30, 30);
 }
 
 
   //lots of java!   
 }    







