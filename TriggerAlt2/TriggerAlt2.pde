
import ddf.minim.*;

Minim minim;

AudioSample monkey;
AudioSample queen;
AudioSample robot;
AudioSample quickly;
AudioSample spider;

void setup()
{
  size(1600, 1200, P3D);
  minim = new Minim(this);

  queen = minim.loadSample( "SpiderQueen_org.wav", 512 );
  monkey = minim.loadSample( "SpiderMonkeyHowl_alt1.wav", 512 );
  robot = minim.loadSample( "SpiderRobot.wav", 512 );
  quickly = minim.loadSample( "Quickly.wav", 512 );
  spider = minim.loadSample( "Spider.wav", 512 );
}
void draw()
{
      background(0);
      stroke(255);    
 } 
 
void keyPressed() { {
    
       spider.trigger();
       delay (int(random(157, 337)));
       
       quickly.trigger(); 
       delay (int(random(157, 337)));
       
       robot.trigger();        
       delay (int(random(157, 337)));  
       
       monkey.trigger();               
       delay (int(random(157, 537))); 
       
       queen.trigger();
           
     
 }
  
}