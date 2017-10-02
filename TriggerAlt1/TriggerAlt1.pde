//import processing.serial.*;
//import vsync.*;

//  We create a new ValueReceiver to receive values from the arduino
//ValueReceiver receiver;

//  This is the variable we want to sync from the Arduino to this sketch
//public int analogValue;
import ddf.minim.*;

Minim minim;
AudioSample door;
AudioSample dirt;
AudioSample queen;
AudioSample cave;
AudioSample planet;
AudioSample poltergeist;
AudioSample little_demon;
AudioSample bats;
AudioSample chains;
AudioSample liveghost;
AudioSample carnival;
AudioSample drip;
AudioSample friendly_alien;
AudioSample maniac_laugh;

void setup()
{
  size(512, 200, P3D);
  minim = new Minim(this);
  
 // Serial serial = new Serial(this, "/dev/cu.usbmodem14111", 19200);
 // receiver = new ValueReceiver(this, serial);
 // receiver.observe("analogValue");

                         
  // An AudioSample will spawn its own audio processing Thread, 
  // and since audio processing works by generating one buffer 
  // of samples at a time, we can specify how big we want that
  // buffer to be in the call to loadSample. 
  // above, we requested a buffer size of 512 because 
  // this will make the triggering of the samples sound more responsive.
  // on some systems, this might be too small and the audio 
  // will sound corrupted, in that case, you can just increase
  // the buffer size.
  
  bats = minim.loadSample( "Bats.wav", 1024 );
  door = minim.loadSample( "door_creak.wav", 512 );
  dirt = minim.loadSample( "SpiderDirt_org.wav", 512 );
  queen = minim.loadSample( "SpiderQueen_alt1.wav", 512 );
  cave = minim.loadSample("cave.wav", 512);
  planet = minim.loadSample("missing_planet_select.wav", 512);
  poltergeist = minim.loadSample("poltergeist_mono.wav", 1024);
  little_demon = minim.loadSample("Little_Demon.wav", 512);
  chains = minim.loadSample("Spooky_Chains.wav", 512);
  liveghost = minim.loadSample("live_ghost.wav", 512);
  carnival = minim.loadSample("carnival.wav", 512);
  drip = minim.loadSample("drip.wav", 512);
  friendly_alien = minim.loadSample("friendly_alien.wav", 512);
  maniac_laugh = minim.loadSample ("maniac_laugh.wav", 512);
}

void draw()
{
      background(0);
      stroke(255);
  
      if (mousePressed) {
           queen.trigger(); 
           delay(33);
           queen.trigger();
      } else {

     //}
      int analogValue = int(random(127));
      println (analogValue);
 
      if (analogValue <=126 && analogValue >107){
       
      
            bats.trigger();
            little_demon.stop();
            poltergeist.stop();
    
      }
      
       
       else if (analogValue <=107 && analogValue >95){
            //chains.trigger();
            dirt.trigger();
       
            poltergeist.stop();
        
       }
       
      else if (analogValue <=95 && analogValue >70){
        
            bats.stop();
       
        
      }
      
      else if (analogValue <=70 && analogValue >50){
           // planet.stop();
            dirt.trigger();
            bats.trigger();
           // maniac_laugh.trigger();
           // liveghost.stop();
           // door.stop();
            delay(333);
           // chains.stop();
            drip.trigger();
     
          
      }
      
       else if (analogValue <=50 && analogValue >30){
           // planet.stop();
            drip.trigger();
            dirt.trigger();
            bats.stop();
            chains.stop();
            cave.stop();
         
          
      }
   
      else {
          //  planet.trigger();
            poltergeist.stop();
            liveghost.stop();
            carnival.stop();
            door.stop();  
         
       } 
       delay (int(random(133)));
 }
}