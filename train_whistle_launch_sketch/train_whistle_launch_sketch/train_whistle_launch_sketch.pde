//train whistle Sound Effect from <a href="https://pixabay.com/sound-effects/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=102834">Pixabay</a>

//import the sound library
//remember to redownload sound
import processing.sound.*;

Train train;

//declare a SoundFile
SoundFile whistle;
SoundFile pling;

//declare timer
float timerLength = 50; //number we're counting up to
float timerValue = 0; //thing that's counting up

void setup() {
  background(255);
  size(400, 400);
  //load the sound effect from the data folder
  whistle = new SoundFile(this, "train-whistle.wav");
  pling = new SoundFile(this, "pling.wav");

  train = new Train(random(100, 300), random(0.5, 2));
}

void draw() {
  timerValue += 1;
  
  if(timerValue >= timerLength){
  timerValue = 0;
  background(random(255),random(255),random(255));
  pling.play();

  }
  


  train.update();
}

void keyPressed(){
 //press space to toot the horn! But don't allow it to keep starting
  if(key == ' ' && !whistle.isPlaying()){
    whistle.play();
  }
}
