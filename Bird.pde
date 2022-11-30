class Birb{
  float birbbeakc;
  float birbbodyc;
  float birbsize;
  float birbx;
  float birby;
  float birbwingo;
  PVector birbPos = new PVector();
  PVector bVelocity = new PVector();

Birb() {
  spawn();
  }
  
  void spawn(){
    birbPos.x = random(850, 1600);
    birbPos.y = random(100, 350);
    bVelocity.x = random(-8,-3);
    bVelocity.y = random(-1, 2);
  }
  
  void move(){
     //Add's movement vectors to birds
     birbPos.add(bVelocity);
    
    //respawns birds if they go offscreen
   if (birbPos.x < -650){
     spawn();
   }
  }
  
  //Draw the Birbs
    void drawBirb(float birbbeakc, float birbbodyc) {
    noStroke();
    
    //birb's beak
    fill(252,185,birbbeakc);
    triangle(596+birbPos.x,192+birbPos.y,585+birbPos.x,
    197+birbPos.y,595+birbPos.x,203+birbPos.y);
    //birb's head
    fill(99,birbbodyc,97);
    circle(606+birbPos.x,198+birbPos.y,25);
    //birb's eye
    stroke(252,185,17);
    strokeWeight(3);
    line(602+birbPos.x,193+birbPos.y,602+birbPos.x,196+birbPos.y);
    //birb's neck
    fill(99,birbbodyc,97);
    noStroke();
    beginShape();
    vertex(613+birbPos.x,188+birbPos.y);
    vertex(634+birbPos.x,198+birbPos.y);
    vertex(618+birbPos.x,225+birbPos.y);
    vertex(599+birbPos.x,208+birbPos.y);
    endShape(CLOSE);
    //birb's butt
    beginShape();
    vertex(660+birbPos.x,200+birbPos.y);
    vertex(657+birbPos.x,230+birbPos.y);
    vertex(686+birbPos.x,215+birbPos.y);
    endShape(CLOSE);
    ellipse(642+birbPos.x,214+birbPos.y,60,36);
    //birb's tail
    strokeWeight(10);
    stroke(99,birbbodyc,97);
    line(673+birbPos.x,213+birbPos.y,701+birbPos.x,206+birbPos.y);
    //birb's wings
    fill(99,birbbodyc,97,random(100,250));
    noStroke();
    beginShape();
    vertex(639+birbPos.x,198+birbPos.y);
    vertex(650+birbPos.x,177+birbPos.y);
    vertex(680+birbPos.x,162+birbPos.y);
    vertex(670+birbPos.x,188+birbPos.y);
    vertex(666+birbPos.x,206+birbPos.y);
    endShape(CLOSE);
   
    beginShape();
    vertex(646+birbPos.x,200+birbPos.y);
    vertex(642+birbPos.x,180+birbPos.y);
    vertex(618+birbPos.x,167+birbPos.y);
    vertex(625+birbPos.x,181+birbPos.y);
    vertex(627+birbPos.x,204+birbPos.y);
    endShape(CLOSE);
    
    }
}
