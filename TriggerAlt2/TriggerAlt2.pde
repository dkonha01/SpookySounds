
import ddf.minim.*;

Minim minim;

AudioSample monkey;
AudioSample queen;
AudioSample robot;
AudioSample quickly;

void setup()
{
  size(1600, 1200, P3D);
  minim = new Minim(this);

  queen = minim.loadSample( "SpiderQueen_org.wav", 512 );
  monkey = minim.loadSample( "SpiderMonkeyHowl_alt1.wav", 512 );
  robot = minim.loadSample( "Robot.wav", 512 );
  quickly = minim.loadSample( "Quickly.wav", 512 );
 
}
void draw()
{
      background(0);
      stroke(255);    
 } 
 
void keyPressed() { {
    
       queen.trigger();
       delay (int(random(157, 337)));
       
       quickly.trigger(); 
       delay (int(random(117, 237)));
       
       queen.trigger();
       delay (int(random(157, 337)));  
       
       robot.trigger(); 
     
       monkey.trigger();
       delay (int(random(137, 537))); 
 }
  
}