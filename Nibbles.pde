class Nibbles
{
  
  //Declaring stuff
  PVector NibblesPos = new PVector();
  float gravity = 0.25;
  float nVelocity = 10;
  float ballooncolorr;
  float ballooncolorg;
  float ballooncolorb;
  
  Nibbles(float r, float g, float b){
      
  ballooncolorr = r;
  ballooncolorg = g;
  ballooncolorb = b;
  }
  
  void drawNibbles(){
  //Draw Nibbles and the balloon
    noStroke();
    
    //Nibbles' legs at the back
    strokeWeight(18);
    stroke(180,120,55);
    line(132+NibblesPos.x,385+NibblesPos.y,140+NibblesPos.x,392+NibblesPos.y);
    line(148+NibblesPos.x,304+NibblesPos.y,166+NibblesPos.x,298+NibblesPos.y);
    //Nibbles' body
    noStroke();
    fill(247,165,43);
    rectMode(CENTER);
    ellipse(115+NibblesPos.x,333+NibblesPos.y,100,130);
    //Nibbles' legs
    stroke(247,165,43);
    strokeWeight(20);
    line(151+NibblesPos.x,340+NibblesPos.y,171+NibblesPos.x,360+NibblesPos.y);
    line(140+NibblesPos.x,286+NibblesPos.y,156+NibblesPos.x,270+NibblesPos.y);
    //Nibbles' paw details
    strokeWeight(2);
    stroke(180,120,55);
    line(171+NibblesPos.x,364+NibblesPos.y,175+NibblesPos.x,367+NibblesPos.y);
    line(174+NibblesPos.x,358+NibblesPos.y,179+NibblesPos.x,362+NibblesPos.y);
    line(155+NibblesPos.x,267+NibblesPos.y,159+NibblesPos.x,262+NibblesPos.y);
    line(159+NibblesPos.x,271+NibblesPos.y,164+NibblesPos.x,267+NibblesPos.y);
    
    

    //Nibbles' collar
    noStroke();
    fill(230,56,61);
    ellipse(93+NibblesPos.x,355+NibblesPos.y,77,85);
    
    //Nibbles' face and ear shadow
    fill(180,120,55);
    ellipse(95+NibblesPos.x,348+NibblesPos.y,92,83);
    triangle(104+NibblesPos.x,318+NibblesPos.y,129+NibblesPos.x,297+NibblesPos.y,130+NibblesPos.x,333+NibblesPos.y);
    
    //Nibbles' ears
    fill(0,0,0);
    triangle(52+NibblesPos.x,340+NibblesPos.y,38+NibblesPos.x,316+NibblesPos.y,67+NibblesPos.x,321+NibblesPos.y);
    triangle(101+NibblesPos.x,318+NibblesPos.y,128+NibblesPos.x,297+NibblesPos.y,124+NibblesPos.x,333+NibblesPos.y);
    fill(245,242,246);
    triangle(52+NibblesPos.x,338+NibblesPos.y,41+NibblesPos.x,318+NibblesPos.y,59+NibblesPos.x,327+NibblesPos.y);
    triangle(112+NibblesPos.x,320+NibblesPos.y,126+NibblesPos.x,302+NibblesPos.y,123+NibblesPos.x,328+NibblesPos.y);
    fill(245,242,246);
    
    //Nibbles' face
    fill(247,165,43);
    ellipse(90+NibblesPos.x,350+NibblesPos.y,89,80);

    //Nibble's face pattern
    stroke(0,0,0);
    strokeWeight(5);
    line(85+NibblesPos.x,313+NibblesPos.y,88+NibblesPos.x,326+NibblesPos.y);
    strokeWeight(3);
    line(82+NibblesPos.x,324+NibblesPos.y,92+NibblesPos.x,323+NibblesPos.y);
    line(79+NibblesPos.x,319+NibblesPos.y,93+NibblesPos.x,317+NibblesPos.y);
    
    //Nibbles' eyes
    noStroke();
    fill(245,242,246);
    ellipse(62+NibblesPos.x,348+NibblesPos.y,32,25);
    ellipse(117+NibblesPos.x,342+NibblesPos.y,33,26);
    
    //Nibbles' nose and mouth
    fill(0,0,0);
    triangle(84+NibblesPos.x,352+NibblesPos.y,97+NibblesPos.x,350+NibblesPos.y,92+NibblesPos.x,358+NibblesPos.y);
    strokeWeight(2);
    stroke(0,0,0);
    line(91+NibblesPos.x,358+NibblesPos.y,71+NibblesPos.x,368+NibblesPos.y);
    line(91+NibblesPos.x,358+NibblesPos.y,113+NibblesPos.x,363+NibblesPos.y);
    
    //Nibbles' eyes
    noFill();
    arc(70+NibblesPos.x,345+NibblesPos.y,31,30,PI/1.2,PI+PI/10);
    arc(109+NibblesPos.x,342+NibblesPos.y,32,30,PI/1.3+PI,2*PI+PI/20);
    
    //Nibbles' bell
    noStroke();
    fill(255,224,104);
    circle(92+NibblesPos.x,395+NibblesPos.y,27);
    stroke(255,195,74);
    strokeWeight(7);
    line(79+NibblesPos.x,393+NibblesPos.y,104+NibblesPos.x,391+NibblesPos.y);
    line(93+NibblesPos.x,405+NibblesPos.y,93+NibblesPos.x,404+NibblesPos.y);
    
    //Nibbles' tail connects to the balloon
    stroke(0);
    strokeWeight(2);
    line(112+NibblesPos.x,207+NibblesPos.y,113+NibblesPos.x,233+NibblesPos.y);
    
    //Nibbles' tail
    stroke(247,165,43);
    strokeWeight(15);
    line(114+NibblesPos.x,276+NibblesPos.y,114+NibblesPos.x,229+NibblesPos.y);
    
    //Nibbles' balloon string tie
    stroke(0);
    strokeWeight(2);
    line(107+NibblesPos.x,228+NibblesPos.y,120+NibblesPos.x,236+NibblesPos.y);
    line(108+NibblesPos.x,238+NibblesPos.y,120+NibblesPos.x,232+NibblesPos.y);
    
    //balloon
    noStroke();
    fill(ballooncolorr,ballooncolorg,ballooncolorb);
    ellipse(113+NibblesPos.x,165+NibblesPos.y,80,90);
    triangle(113+NibblesPos.x,204+NibblesPos.y,107+NibblesPos.x,216+NibblesPos.y,119+NibblesPos.x,216+NibblesPos.y);
    
  }

  
  void floop(){
    nVelocity = -10;
  }
  
  void drag(){
    nVelocity += 0.4;
  }
  
  void move(){
    NibblesPos.y += nVelocity;
  }
  void collisions(){
    if(NibblesPos.y > 600){
      game = 0;
    }
     for(int r = 0; r < rock.length; r++){
      if(dist(NibblesPos.x+150, NibblesPos.y+150, rock[r].rockPos.x + 20, rock[r].rockPos.y - 20)<30 ||
      dist(NibblesPos.x-150, NibblesPos.y-150,rock[r].rockPos.x - 20, rock[r].rockPos.y+20)<30){
       game = 0;
      }
    }
  }
}
