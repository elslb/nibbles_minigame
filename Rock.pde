class Rock
{
  PVector rockPos = new PVector();
  PVector rVelocity = new PVector();
  float Nibblesx;
  float Nibblesy;
  
  Rock(){
    spawn();
  }
  
  void drawRock(){
    fill(170);
    noStroke();
    ellipse(rockPos.x, rockPos.y, 20, 20);
  }
  
  // spawns the rocks randomly offscreen and sets their speed to give an illusion of multiple points of origin
  void spawn(){
    rockPos.x = random(850, 1600);
    rockPos.y = random(150, 650);
    rVelocity.x = random(-13,-5);
    rVelocity.y = random(-3, 3);
  }
  
  //gives the rocks velocity and respawns the rocks if they move offscreen
  void move(){
    
   rockPos.add(rVelocity);
   
   if (rockPos.x < - 50){
     spawn();
   }
  }
}
