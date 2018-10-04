Bacteria[] Swarm = new Bacteria[3500];

void setup() {     
 	size(500, 500);
  for(int i = 0; i < Swarm.length; i++) {
    Swarm[i] = new Bacteria();
  }
}   
 
void draw() {    
  background(255);
 	for(int i = 0; i < Swarm.length; i++) {
    Swarm[i].move();
    Swarm[i].display();
  }
}  
 
class Bacteria {     
  int myX, myY, x1, y1;
  Bacteria() {
    myX = myY = width/2;
  }
  void move() {
    if (mousePressed == true) {
      myX = mouseX + x1;
      myY = mouseY + y1;
      x1 += (int)(Math.random() * 7) - 3;
      y1 += (int)(Math.random() * 7) - 3;
    } else {
      if (x1 > 0) {
        x1 -= (int)(Math.random() * 7) - 3;
      }
      myX = mouseX;
      myY = mouseY;
    }
  }
  void display() {
    fill(0);
    ellipse(myX, myY, 10, 10);
  }  
}    
