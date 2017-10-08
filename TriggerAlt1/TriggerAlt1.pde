import ddf.minim.*;

Minim minim;

AudioSample bats;
AudioSample crawly;
AudioSample crawlySlo;
AudioSample drip;
AudioSample goo;
AudioSample gooSelect;


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
  gooSelect = minim.loadSample( "GooSelect.wav", 512);
  crawlySlo = minim.loadSample( "SDL_2_slo.wav");
  

}

void draw()
{
  background(0);
  stroke(255);
      int analogValue = int(random(127));
      println (analogValue);
 
      if (analogValue <=126 && analogValue >116){
       
            delay(1733);
            bats.trigger();
            delay (int(random(1733)));  
            goo.stop();
        
      }
      
      else if (analogValue <=116 && analogValue >100){
            crawly.trigger();
            bats.stop();
            goo.stop();
            gooSelect.stop();  
         
      }   
      
       else if (analogValue <=100 && analogValue >85){
           
            delay (int(random(1733)));  
            crawly.stop();
            delay(733);
            gooSelect.trigger();
        
       }
       
      else if (analogValue <=85 && analogValue >70){
         
            bats.stop();
            drip.trigger();
            delay(1733);
            goo.stop();
            crawly.stop();
          
      }
      
      else if (analogValue <=70 && analogValue >50){
           
            drip.trigger();     
            delay(int(random(1733)));
            crawlySlo.trigger();      
            delay(int(random(3733)));
            drip.stop();
          
      }
      
       else if (analogValue <=50 && analogValue >30){
                 
            goo.trigger();
            //drip.stop();
            delay(1733);
            crawly.stop();
          
      }
        else if (analogValue <=30 && analogValue >15){
          
            gooSelect.trigger();
            crawly.stop();
            drip.stop();
            bats.trigger();
            goo.stop();
         
            delay(int(random(3733)));
            crawlySlo.stop(); 
          
          
      }

      else {
         
            delay (int(random(1733)));
       } 
       delay (int(random(3733)));
}