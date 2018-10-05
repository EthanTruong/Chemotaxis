Bacteria[] Swarm = new Bacteria[200];

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
  int myX, myY, x1, y1, time;
  
  Bacteria() {
    myX = myY = width/2;
  }
  
  void move() {
    fill((int)(Math.random() * 255) + 1, (int)(Math.random() * 255) + 1, (int)(Math.random() * 255) + 1);
    if (mousePressed == true) {
      myX = mouseX + x1;
      myY = mouseY + y1;
      x1 += (int)(Math.random() * 7) - 3;
      y1 += (int)(Math.random() * 7) - 3;
      time++;
    } else {
      background(255);
      fill(0);
      x1 = y1 = 0;
      myX = mouseX;
      myY = mouseY;
      time = 0;
    }
  }
 
  void display() {
    noStroke();
    ellipse(myX, myY, 10, 10);
    textSize(15);
    text("You have been holding down mouse1 for", width/2 - 170, height - 75);
    textSize(32);
    text(time/60 + " seconds (neglecting lag)", width/2 - 210, height - 40);
  }  
}    
