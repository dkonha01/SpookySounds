
import ddf.minim.*;

Minim minim;

AudioSample monkey;
AudioSample queen;
AudioSample robot;

void setup()
{
  size(1600, 1200, P3D);
  minim = new Minim(this);

  queen = minim.loadSample( "SpiderQueen_org.wav", 512 );
  monkey = minim.loadSample( "SpiderMonkeyHowl_alt1.wav", 512 );
  robot = minim.loadSample( "Robot.wav", 512 );
 
}
void draw()
{
      background(0);
      stroke(255);    
 } 
 
void keyPressed() { {
    
       queen.trigger();  
       delay (int(random(37, 137)));
       monkey.trigger();
       delay (int(random(11, 313)));   
       robot.trigger(); 
       delay (int(random(77, 237)));
       monkey.trigger();
 }
  
}