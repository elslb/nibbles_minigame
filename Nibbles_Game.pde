///////Nibbles Escapes!!///////////



//Variables declaration

float Nibblesx;
float Nibblesy;
//boolean dead = false   <---- left over from my struggle with the boolean
boolean title = true;
int score = 0;
int game;

//Defining classes
Nibbles nibbles = new Nibbles(230,56,61);
Birb[] birb = new Birb[3];
Cloud[] cloud = new Cloud[3];
Rock[] rock = new Rock[4];

//Setting up the stuff
void setup(){
  size(800, 600);
  frameRate(60);
  title = true;
  for(int b = 0; b < birb.length; b++){
    birb[b] = new Birb();
  }
  //Initializing new clouds at random position by using "for" loop/array
  for (int i=0; i< cloud.length; i++) {
    cloud[i] = new Cloud(random(-500, 900), random(-100, 700), 246, random(1, 3));
  }
    for(int r = 0; r < rock.length; r++){
    rock[r] = new Rock();
  }
}

void draw(){
  background(165, 210, 235);
  //detects if the player is dead or not
  if(game == 1){
    nibbles.move();
    score++;
  }
  //Make clouds appear at random positions
    for ( int i=0; i< cloud.length; i++) {
    cloud[i].moveCloud();
    cloud[i].drawCloud();
  }
  //make decorative birds fly around from random positions
    for(int b = 0; b < birb.length; b++){
    birb[b].drawBirb(0, 0);
    birb[b].move();
  }
  //draws our little hero Nibbles and determines air resistance based on game condition
  nibbles.drawNibbles();
  if(game == 1){
    nibbles.drag();
  }
  //calls on the rock functions
    for(int r = 0; r < rock.length; r++){
    rock[r].drawRock();
    rock[r].move();
  }
  //this deals with nibbles colliding with screen borders and rocks
  nibbles.collisions();

  // displays the text and score on screen for the player to track their progress
  fill(40,140,140);
  textSize(36);
  if(game == 1){
    fill(255);
    text("Time flooping:", 40, 75);
    text(score, 320, 75);
  }
  else{
    rect(350, 100, 400, 120);
    rect(350, 200, 400, 120);
    fill(255);
    if(title){
      text("Nibbles Escapes!", 170, 140);
      text("Click mouse to Play", 180, 240);
    }
    else{
      text("Oh no! Nibbles!", 170, 140);
      text("Time flooping:", 180, 240);
      text(score, 465, 240);
    }
  }
}

//resets the game to the beginning condition if triggered
void reset(){
  if(game == 0){
  game = 1;
  }
  score = 0;
  nibbles.NibblesPos.y = 300;
}

//Assigns actions and conditions to mousepressing
void mousePressed(){
  nibbles.floop();
  title = false;
  if(game == 0){
    reset();
  }
}

  
