/** 
 *  Uses the MacOS commandline application "say"
 *  2012-11-01
 *  Author: Morgan Aasdam
 *  Contact: https://github.com/morganhk
 *  Note: The file say.sh needs to be in the same folder as the pde file. say.sh is necessary
 *        as it is used as workaround to previous test ignoring the "-v" argument
 **/

String voiceScriptLocation;

void setup() {
  size(200,200);
  background(0);
  
  //Find the Sketch location and set the path to say.sh
  String currentDir = sketchPath("");
  voiceScriptLocation = currentDir+"/say.sh";
  
  //Say something
  systemSay("Agnes", 150, "Hello World!");
}
	
void draw() { 
    //do nothing
}


//Usage: voice: Voice to be used, wpm: words per minute, words: things to say
void systemSay(String voice, int wpm, String words){
    String[] args = {voiceScriptLocation, voice, words, "-r "+wpm};
    exec(args);
}

/** Default voices on MAC OS X 10.7
Agnes
Albert
Alex
Bad News
Bahh
Bells
Boing
Bruce
Bubbles
Cellos
Deranged
Fred
Good News
Hysterical
Junior
Kathy
Pipe Organ
Princess
Ralph
Trinoids
Vicki
Victoria
Whisper
Zarvox
**/
