//import processing.serial.*;
//import vsync.*;

//  We create a new ValueReceiver to receive values from the arduino
//ValueReceiver receiver;

//  This is the variable we want to sync from the Arduino to this sketch
//public int analogValue;
import ddf.minim.*;

Minim minim;
AudioSample door;
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
      int analogValue = int(random(127));
      println (analogValue);
 
      if (analogValue <=126 && analogValue >116){
            cave.trigger(); 
            delay(1333);
            bats.trigger();
            little_demon.stop();
            poltergeist.stop();
            delay (int(random(4333)));
      }
      
      else if (analogValue <=116 && analogValue >100){
            door.trigger();
            delay(933);
            little_demon.stop();
            cave.stop();
            bats.stop();
            chains.stop();
            planet.stop();
            friendly_alien.trigger();
            poltergeist.stop();
           // delay(733);
            delay (int(random(4333)));
      }   
      
       else if (analogValue <=100 && analogValue >85){
            chains.trigger();
            delay (int(random(733)));  
            poltergeist.stop();
           // planet.stop();
            bats.stop();
           // cave.stop();
            door.stop(); 
            delay(133);
            liveghost.trigger();   
            delay (int(random(3333)));
       }
       
      else if (analogValue <=85 && analogValue >70){
            little_demon.trigger();
            delay (int(random(733)));  
            poltergeist.stop();
            maniac_laugh.stop();
           // planet.stop();
            bats.stop();
           // cave.stop();
            door.stop(); 
            delay(733);
            little_demon.trigger();   
            delay (int(random(3333)));
      }
      
      else if (analogValue <=70 && analogValue >50){
           // planet.stop();
            bats.stop();
            maniac_laugh.trigger();
            liveghost.stop();
            door.stop();
            delay(333);
            chains.stop();
            drip.trigger();
            cave.trigger(); 
            delay(int(random(1777)));
            poltergeist.stop();
            maniac_laugh.trigger();
            delay(int(random(1777)));
          
      }
      
       else if (analogValue <=50 && analogValue >30){
           // planet.stop();
            bats.stop();
            chains.stop();
            cave.stop();
            planet.stop();
            poltergeist.trigger();
            maniac_laugh.stop();
            liveghost.stop();
            door.stop();
            delay(2333);
          
      }
        else if (analogValue <=30 && analogValue >15){
           // planet.stop();
            bats.stop();
            poltergeist.stop();
            liveghost.stop();
            door.stop();
            //chains.trigger();
            delay(int(random(1777)));
            carnival.trigger();
            delay(2333);
          
      }

      else {
            planet.trigger();
            poltergeist.stop();
            liveghost.stop();
            carnival.stop();
            door.stop();  
           // cave.stop();
            //cave.trigger(); 
            delay (int(random(3733)));
       } 
       delay (int(random(3733)));
}


