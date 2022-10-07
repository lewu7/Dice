void setup(){
  size(600,700);
  noLoop();
}

void mousePressed(){
  redraw();
}

class Dice{
  int mySize, myX, myY, endX, endY; //my dice variables
  int random;
  int counter;
  
  Dice(int x, int y){ //constructor, initializes all the member variables
    mySize = 75;
    myX = x;
    myY = y;
  }
  void roll(){
    if(Math.random() < 0.16){
      random = 1;
    } else if(Math.random() < .33){
      random = 2; 
    } else if(Math.random() < .5){
      random = 3;
    } else if(Math.random() < .66){
      random = 4;
    } else if(Math.random() < .83){
      random = 5;
    } else {
      random = 6;
    }
  }
  void show(){ //function that contains all my variables for a dice
    strokeWeight(2);
    fill(0, (int)(Math.random()*255)+50, (int)(Math.random()*255)+100);
    rect(myX,myY, mySize, mySize, 28);
    noStroke();
    fill(255);
    rect(0, 610,700,120);
    
    strokeWeight(1);
    stroke(0);
    if(random == 1){
      fill(0);
      circle(myX+38,myY+37,16);
    } else if(random == 2){
      fill(0);
      circle(myX+20,myY+20,12);
      circle(myX+55,myY+55,12);
    } else if(random == 3){
      fill(0);
      circle(myX+55,myY+20,12);
      circle(myX+20,myY+55,12);
      circle(myX+38,myY+37,12); 
    } else if(random == 4){
      fill(0);
      circle(myX+20,myY+20,12);
      circle(myX+55,myY+55,12);
      circle(myX+55,myY+20,12);
      circle(myX+20,myY+55,12);
    } else if(random == 5){
      fill(0);
      circle(myX+20,myY+20,12);
      circle(myX+55,myY+55,12);
      circle(myX+55,myY+20,12);
      circle(myX+20,myY+55,12);
      circle(myX+38,myY+37,12); 
    } else {
      fill(0);
      circle(myX+20,myY+20,12);
      circle(myX+55,myY+55,12);
      circle(myX+55,myY+20,12);
      circle(myX+20,myY+55,12);
      circle(myX+20,myY+38,12);
      circle(myX+55,myY+38,12);
    }
   }
} //end of my dice class 

Dice one; // my first dice
void draw(){
  int counter = 0;
  for(int x = 15; x <= 550; x+=100){
    for(int y = 15; y <= 550; y+=100){
      one = new Dice(x,y); 
      one.roll();
      one.show();;
      if(one.random == 1){
        counter++;
      }
      if(one.random == 2){
        counter += 2;
      }
      if(one.random == 3){
        counter += 3;
      }
      if(one.random == 4){
        counter += 4;
      }
      if(one.random == 5){
        counter += 5;
      }
      if(one.random == 6){
        counter += 6;
      }
  }
  textSize(45);
  text("Sum of dots is: " + counter, 70, 670);
}
}
