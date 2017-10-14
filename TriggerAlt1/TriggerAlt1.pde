import ddf.minim.*;

Minim minim;

AudioSample bats;
AudioSample crawly;
AudioSample crawlySlo;
AudioSample drip;
AudioSample goo;
AudioSample gooSelect;
AudioSample bot;


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
  bot = minim.loadSample( "SpiderRobot.wav", 512 );
  

}

void draw()
{
  background(0);
  stroke(255);
      int analogValue = int(random(127));
      println (analogValue);
 
      if (analogValue <=126 && analogValue >109){
       
         
            bats.trigger();
            delay (int(random(1733)));  
            gooSelect.stop();
        
      }
      
       else if (analogValue <=109 && analogValue >93){
           
            delay (int(random(1733)));  
            crawly.trigger();
            delay(733);
            gooSelect.trigger();
            bot.trigger();
        
       }
       
      
      else if (analogValue <=93 && analogValue >79){
            
            delay (int(random(1733)));  
            drip.trigger();     
            delay(int(random(1733)));
            crawlySlo.trigger();      
            delay(int(random(1733)));
            drip.stop();
            crawlySlo.stop(); 
          
      }
      
            else if (analogValue <=79 && analogValue >67){
           
            drip.trigger();     
            delay(int(random(1733)));
            crawlySlo.trigger();      
            delay(int(random(1733)));
            drip.stop();
          
      }
      
       else if (analogValue <=67 && analogValue >43){
                 
            goo.stop();
            bot.trigger();
            delay(1733);
            //crawly.stop();
          
      }
        else if (analogValue <=43 && analogValue >27){
          
            delay(int(random(1733)));
            goo.trigger();
            crawly.trigger();
            delay(int(random(5733)));
            drip.stop();          
            goo.stop();        
            delay(int(random(3733)));
            crawlySlo.stop(); 
                  
      }

      else {
        
            delay(int(random(3733)));
            crawly.stop();
            bot.stop();
           // goo.stop();        
            delay(int(random(1733)));
            crawlySlo.stop();         
            delay (int(random(1733)));
            gooSelect.trigger();
            
       } 
       delay (int(random(1733)));
}