//import processing.serial.*;
//import vsync.*;

//  We create a new ValueReceiver to receive values from the arduino
//ValueReceiver receiver;

//  This is the variable we want to sync from the Arduino to this sketch
//public int analogValue;
import ddf.minim.*;

Minim minim;

AudioSample bats;
AudioSample crawly;
AudioSample drip;
AudioSample goo;


void setup()
{
  size(512, 200, P3D);
  minim = new Minim(this);
                     
  // An AudioSample will spawn its own audio processing Thread, 
  // and since audio processing works by generating one buffer 
  // of samples at a time, we can specify how big we want that
  // buffer to be in the call to loadSample. 
  // above, we requested a buffer size of 512 because 
  // this will make the triggering of the samples sound more responsive.
  // on some systems, this might be too small and the audio 
  // will sound corrupted, in that case, you can just increase
  // the buffer size.
  
  bats = minim.loadSample( "Bats.wav", 512 );
  crawly = minim.loadSample( "SpiderDirtLouder_alt1.wav", 1024 );
  drip = minim.loadSample("drip.wav", 512);
  goo = minim.loadSample( "Goo.wav", 1024 );

}

void draw()
{
  background(0);
  stroke(255);
      int analogValue = int(random(127));
      println (analogValue);
 
      if (analogValue <=126 && analogValue >116){
       
            delay(1333);
            bats.trigger();
        
      }
      
      else if (analogValue <=116 && analogValue >100){
            crawly.trigger();
            bats.stop();
            goo.stop();
         
      }   
      
       else if (analogValue <=100 && analogValue >85){
           
            delay (int(random(733)));  
            crawly.trigger();
            delay(133);
            goo.trigger();
        
       }
       
      else if (analogValue <=85 && analogValue >70){
         
            bats.stop();
            drip.trigger();
            delay(733);
            goo.stop();
          
      }
      
      else if (analogValue <=70 && analogValue >50){
           
            delay(333);
 
            drip.trigger();
        
            delay(int(random(1777)));
            crawly.trigger();
       
            delay(int(random(1777)));
          
      }
      
       else if (analogValue <=50 && analogValue >30){
         
           // crawly.trigger();
            delay(2333);
            crawly.stop();
          
      }
        else if (analogValue <=30 && analogValue >15){
          
            goo.trigger();  
            drip.stop();
            //bats.trigger();
         
            delay(int(random(1777)));
          
          
      }

      else {
         
            delay (int(random(1733)));
       } 
       delay (int(random(1733)));
}