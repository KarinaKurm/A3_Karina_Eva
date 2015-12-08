/*////---------------***--------------////
Karina Kurmanbayeve
Eva-Maria Kapser

Assignment 3
Visual Analytics and Data Visualization
OCADU

December 2, 2015
*/

import ddf.minim.*;
import ddf.minim.analysis.*;

////// 2014 ///////
Minim minim;
AudioPlayer player;
AudioMetaData meta;
BeatDetect beat;
BeatListener bl;

Minim minim2;
AudioPlayer player2;
AudioMetaData meta2;
BeatDetect beat2;
BeatListener bl2;

Minim minim3;
AudioPlayer player3;
AudioMetaData meta3;
BeatDetect beat3;
BeatListener bl3;

Minim minim4;
AudioPlayer player4;
AudioMetaData meta4;
BeatDetect beat4;
BeatListener bl4;

////// 2012 ///////

Minim minim5;
AudioPlayer player5;
AudioMetaData meta5;
BeatDetect beat5;
BeatListener bl5;

Minim minim6;
AudioPlayer player6;
AudioMetaData meta6;
BeatDetect beat6;
BeatListener bl6;

Minim minim7;
AudioPlayer player7;
AudioMetaData meta7;
BeatDetect beat7;
BeatListener bl7;

Minim minim8;
AudioPlayer player8;
AudioMetaData meta8;
BeatDetect beat8;
BeatListener bl8;

////// 2010 ///////

Minim minim9;
AudioPlayer player9;
AudioMetaData meta9;
BeatDetect beat9;
BeatListener bl9;

Minim minim10;
AudioPlayer player10;
AudioMetaData meta10;
BeatDetect beat10;
BeatListener bl10;

Minim minim11;
AudioPlayer player11;
AudioMetaData meta11;
BeatDetect beat11;
BeatListener bl11;

Minim minim12;
AudioPlayer player12;
AudioMetaData meta12;
BeatDetect beat12;
BeatListener bl12;

////// 2008 ///////

Minim minim13;
AudioPlayer player13;
AudioMetaData meta13;
BeatDetect beat13;
BeatListener bl13;

Minim minim14;
AudioPlayer player14;
AudioMetaData meta14;
BeatDetect beat14;
BeatListener bl14;

Minim minim15;
AudioPlayer player15;
AudioMetaData meta15;
BeatDetect beat15;
BeatListener bl15;

Minim minim16;
AudioPlayer player16;
AudioMetaData meta16;
BeatDetect beat16;
BeatListener bl16;



float kickSize, snareSize, hatSize;

class BeatListener implements AudioListener
{
  private BeatDetect beat;
  private AudioPlayer source;

  BeatListener(BeatDetect beat, AudioPlayer source)
  {
    this.source = source;
    this.source.addListener(this);
    this.beat = beat;
  }

  void samples(float[] samps)
  {
    beat.detect(source.mix);
  }

  void samples(float[] sampsL, float[] sampsR)
  {
    beat.detect(source.mix);
  }
}

float rad = 70;

int  r = 360;
int  r2 = 270;
int  r3 = 180;
int  r4 = 90;
int rectH = 5;
int rectW = 5;

int active_year = 0;
int changeCol =  0;

char activeKey = 0;

///song text coord/////

int songX_1 = 600;
int songY_1 = -300;

int songX_2 = -600;
int songY_2 = -300;

int songX_3 = -600;
int songY_3 = 300;

int songX_4 = 600;
int songY_4 = 300;

////2014 songs///
String song1 = "Iggy Azalea -Fancy";
String song2 = "Ariana Grande -Problem";
String song3 = "MAGIC! -Rude";
String song4 = "Sam Smith -Stay With Me";

///2012 ///
String song5 = "Carly Rae Jepsen -Call Me Maybe";
String song6 = "Maroon 5 -Payphone";
String song7 = "Gotye -Somebody That I Used To Know";
String song8 = "Katy Perry - Wide Awake";

///songs 2010////

String song9 = "Katy Perry -California Gurls";
String song10 = "Eminem -Love The Way You Lie";
String song11 = "B.o.B -Airplanes";
String song12 = "Usher -OMG";

///songs 2008////
String song13 = "Katy Perry -I Kissed A Girl";
String song14 = "Rihanna -Take A Bow";
String song15 = "Leona Lewis -Bleeding Love";
String song16 = "Coldplay -Viva La Vida";


void setup()
{
  
  //size(1400,850);
  fullScreen();
  background(#2E3439, 100);
  smooth();

  ////// 2014 ///////

  minim = new Minim(this);
  player = minim.loadFile("2014 - Fancy.mp3");
  meta = player.getMetaData();
  player.play();
  player.mute();
  beat = new BeatDetect(player.bufferSize(), player.sampleRate());
  beat.setSensitivity(300);  
  bl = new BeatListener(beat, player);  

  minim2 = new Minim(this);
  player2 = minim2.loadFile("2014 - Problem.mp3");
  meta2 = player2.getMetaData();
  player2.play();
  player2.mute();
  beat2 = new BeatDetect(player2.bufferSize(), player2.sampleRate());
  beat2.setSensitivity(300);  
  bl2 = new BeatListener(beat2, player2);

  minim3 = new Minim(this);
  player3 = minim3.loadFile("2014 - Rude.mp3");
  meta3 = player3.getMetaData();
  player3.play();
  player3.mute();
  beat3 = new BeatDetect(player3.bufferSize(), player3.sampleRate());
  beat3.setSensitivity(300);  
  bl3 = new BeatListener(beat3, player3);

  minim4 = new Minim(this);
  player4 = minim4.loadFile("2014 - Stay With Me.mp3");
  meta4 = player4.getMetaData();
  player4.play();
  player4.mute();
  beat4 = new BeatDetect(player4.bufferSize(), player4.sampleRate());
  beat4.setSensitivity(300);  
  bl4 = new BeatListener(beat4, player4); 

  ////// 2012 ///////
  minim5 = new Minim(this);
  player5 = minim5.loadFile("2012 - Call Me Maybe.mp3");
  meta5 = player5.getMetaData();
  player5.play();
  player5.mute();
  beat5 = new BeatDetect(player5.bufferSize(), player5.sampleRate());
  beat5.setSensitivity(300);  
  bl5 = new BeatListener(beat5, player5); 

  minim6 = new Minim(this);
  player6 = minim6.loadFile("2012 - Payphone.mp3");
  meta6 = player5.getMetaData();
  player6.play();
  player6.mute();
  beat6 = new BeatDetect(player5.bufferSize(), player6.sampleRate());
  beat6.setSensitivity(300);  
  bl6 = new BeatListener(beat6, player6); 

  minim7 = new Minim(this);
  player7 = minim7.loadFile("2012 - Somebody That I Used To Know.mp3");
  meta7 = player7.getMetaData();
  player7.play();
  player7.mute();
  beat7 = new BeatDetect(player7.bufferSize(), player7.sampleRate());
  beat7.setSensitivity(300);  
  bl7 = new BeatListener(beat7, player7); 

  minim8 = new Minim(this);
  player8 = minim8.loadFile("2012 - Wide Awake.mp3");
  meta8 = player8.getMetaData();
  player8.play();
  player8.mute();
  beat8 = new BeatDetect(player8.bufferSize(), player8.sampleRate());
  beat8.setSensitivity(300);  
  bl8 = new BeatListener(beat8, player8);

  ////// 2010 ///////
  minim9 = new Minim(this);
  player9 = minim9.loadFile("2010 - California Gurls.mp3");
  meta9 = player9.getMetaData();
  player9.play();
  player9.mute();
  beat9 = new BeatDetect(player9.bufferSize(), player9.sampleRate());
  beat9.setSensitivity(300);  
  bl9 = new BeatListener(beat9, player9); 

  minim10 = new Minim(this);
  player10 = minim10.loadFile("2010- Love The Way You Lie.mp3");
  meta10 = player10.getMetaData();
  player10.play();
  player10.mute();
  beat10 = new BeatDetect(player10.bufferSize(), player10.sampleRate());
  beat10.setSensitivity(300);  
  bl10 = new BeatListener(beat10, player10); 

  minim11 = new Minim(this);
  player11 = minim11.loadFile("2010 - Airplanes.mp3");
  meta11 = player11.getMetaData();
  player11.play();
  player11.mute();
  beat11 = new BeatDetect(player11.bufferSize(), player11.sampleRate());
  beat11.setSensitivity(300);  
  bl11 = new BeatListener(beat11, player11); 

  minim12 = new Minim(this);
  player12 = minim12.loadFile("2010 - OMG.mp3");
  meta12 = player12.getMetaData();
  player12.play();
  player12.mute();
  beat12 = new BeatDetect(player12.bufferSize(), player12.sampleRate());
  beat12.setSensitivity(300);  
  bl12 = new BeatListener(beat12, player12);

  ////// 2008 ///////
  minim13 = new Minim(this);
  player13 = minim13.loadFile("2008 - I Kissed A Girl.mp3");
  meta13 = player13.getMetaData();
  player13.play();
  player13.mute();
  beat13 = new BeatDetect(player13.bufferSize(), player13.sampleRate());
  beat13.setSensitivity(300);  
  bl13 = new BeatListener(beat13, player13); 

  minim14 = new Minim(this);
  player14 = minim14.loadFile("2008 - Take A Bow.mp3");
  meta14 = player14.getMetaData();
  player14.play();
  player14.mute();
  beat14 = new BeatDetect(player14.bufferSize(), player14.sampleRate());
  beat14.setSensitivity(300);  
  bl14 = new BeatListener(beat14, player14); 

  minim15 = new Minim(this);
  player15 = minim15.loadFile("2008 - Bleeding Love.mp3");
  meta15 = player15.getMetaData();
  player15.play();
  player15.mute();
  beat15 = new BeatDetect(player15.bufferSize(), player15.sampleRate());
  beat15.setSensitivity(300);  
  bl15 = new BeatListener(beat15, player15); 

  minim16 = new Minim(this);
  player16 = minim16.loadFile("2008 - Viva La Vida.mp3");
  meta16 = player16.getMetaData();
  player16.play();
  player16.mute();
  beat16 = new BeatDetect(player16.bufferSize(), player16.sampleRate());
  beat16.setSensitivity(300);  
  bl16 = new BeatListener(beat16, player16);
  kickSize = snareSize = hatSize = 16;
}

void draw()
{ 
  beat.detect(player.mix);
  beat2.detect(player2.mix);
  beat3.detect(player3.mix);
  beat4.detect(player4.mix);

  beat5.detect(player5.mix);
  beat6.detect(player6.mix);
  beat7.detect(player7.mix);
  beat8.detect(player8.mix);

  beat9.detect(player9.mix);
  beat10.detect(player10.mix);
  beat11.detect(player11.mix);
  beat12.detect(player12.mix);

  beat13.detect(player13.mix);
  beat14.detect(player14.mix);
  beat15.detect(player15.mix);
  beat16.detect(player16.mix);

  fill(#2E3439, 100);
  noStroke();
  rect(0, 0, width, height);

  translate(width/2, height/2);

  if (active_year != 0) {
    textFont(createFont("Helvetica", 16));
    textAlign(CENTER, CENTER);
    fill(#FFFDE3, 100);
    textSize(40);
    text(active_year, 0, 0);
  }


  if (activeKey == '1') {
    active_year = 2014;
    changeCol = 1;

    textFont(createFont("Helvetica", 10));
    textAlign(RIGHT);
    textSize(20);

    text( split(song1, "-")[0], songX_1, songY_1); //// I
    text( split(song1, "-")[1], songX_1, songY_1 +50);
    text(split(song4, "-")[0], songX_4, songY_4); //// IV
    text(split(song4, "-")[1], songX_4, songY_4 +50);

    textFont(createFont("Helvetica", 10));
    textAlign(LEFT);
    textSize(25);

    text(split(song2, "-")[0], songX_2, songY_2); //// II
    text(split(song2, "-")[1], songX_2, songY_2 +50); //// II
    text(split(song3, "-")[0], songX_3, songY_3); //// III
    text(split(song3, "-")[1], songX_3, songY_3+50); //// III
  }
  if (activeKey == '2') {
    active_year = 2012;
    changeCol = 1;

    textFont(createFont("Helvetica", 10));
    textAlign(RIGHT);
    textSize(25);

    text( split(song5, "-")[0], songX_1, songY_1); //// I
    text( split(song5, "-")[1], songX_1, songY_1 +50);
    text(split(song8, "-")[0], songX_4, songY_4); //// IV
    text(split(song8, "-")[1], songX_4, songY_4 +50);

    textFont(createFont("Helvetica", 10));
    textAlign(LEFT);
    textSize(25);

    text(split(song6, "-")[0], songX_2, songY_2); //// II
    text(split(song6, "-")[1], songX_2, songY_2 +50); //// II
    text(split(song7, "-")[0], songX_3, songY_3); //// III
    text(split(song7, "-")[1], songX_3, songY_3+50); //// III
  }
  if (activeKey == '3') {
    active_year = 2010;
    changeCol = 1;

    textFont(createFont("Helvetica", 10));
    textAlign(RIGHT);
    textSize(25);

    text( split(song9, "-")[0], songX_1, songY_1); //// I
    text( split(song9, "-")[1], songX_1, songY_1 +50);
    text(split(song12, "-")[0], songX_4, songY_4); //// IV
    text(split(song12, "-")[1], songX_4, songY_4 +50);

    textFont(createFont("Helvetica", 10));
    textAlign(LEFT);
    textSize(25);

    text(split(song10, "-")[0], songX_2, songY_2); //// II
    text(split(song10, "-")[1], songX_2, songY_2 +50); //// II
    text(split(song11, "-")[0], songX_3, songY_3); //// III
    text(split(song11, "-")[1], songX_3, songY_3+50); //// III
  }
  if (activeKey == '4') {
    active_year = 2008;
    changeCol = 1;

    textFont(createFont("Helvetica", 10));
    textAlign(RIGHT);
    textSize(25);

    text( split(song13, "-")[0], songX_1, songY_1); //// I
    text( split(song13, "-")[1], songX_1, songY_1 +50);
    text(split(song16, "-")[0], songX_4, songY_4); //// IV
    text(split(song16, "-")[1], songX_4, songY_4 +50);

    textFont(createFont("Helvetica", 10));
    textAlign(LEFT);
    textSize(25);
    text(split(song14, "-")[0], songX_2, songY_2); //// II
    text(split(song14, "-")[1], songX_2, songY_2 +50); //// II
    text(split(song15, "-")[0], songX_3, songY_3); //// III
    text(split(song15, "-")[1], songX_3, songY_3+50); //// III
  }

  if (activeKey == '`') {
    active_year = 0;
    changeCol = 0;

    player.mute();
    player2.mute();
    player3.mute();
    player4.mute();
    player6.mute();
    player7.mute();
    player8.mute();
    player9.mute();
    player10.mute();
    player11.mute();
    player12.mute();
    player13.mute();
    player14.mute();
    player15.mute();
    player16.mute();
  }


  if (beat.isOnset()) rad = rad*0.9;
  else rad = 70;


  if (active_year == 2014 || active_year == 0) {
    renderQuadrant(player, r, 1, 14);
    renderQuadrant(player2, r, 2, 14);
    renderQuadrant(player3, r, 3, 14);
    renderQuadrant(player4, r, 4, 14);
  }

  if (active_year == 2012 || active_year == 0) {
    renderQuadrant(player5, r2, 1, 12 );
    renderQuadrant(player6, r2, 2, 12);
    renderQuadrant(player7, r2, 3, 12);
    renderQuadrant(player8, r2, 4, 12);
  }

  if (active_year == 2010 || active_year == 0) {
    renderQuadrant(player9, r3, 1, 10 );
    renderQuadrant(player10, r3, 2, 10);
    renderQuadrant(player11, r3, 3, 10);
    renderQuadrant(player12, r3, 4, 10);
  }

  if (active_year == 2008 || active_year == 0) {
    renderQuadrant(player13, r4, 1, 8);
    renderQuadrant(player14, r4, 2, 8);
    renderQuadrant(player15, r4, 3, 8);
    renderQuadrant(player16, r4, 4, 8);
  }
}
void renderQuadrant(AudioPlayer player, int r, int qNum, int yNum) {

  int bsize = player2.bufferSize();
  float coeff = .5;
  float coeff2 = 1;

  float arcStart = 0;
  float arcStop = 0;

  int lengthBeat = 0;
  int beatDist = 0;
  int kickStart = 0;
  int kickEnd = 0;
  int kickDist = 0;
  int  dotsPos = 0;
  int dotsDist = 0;

  int lineNum = 10;
  int dotNum = 10;
  int arcNum = 10;

  int arcPos1 = 0;
  int arcPos2 = 0;
  int arcPos3 = 0;
  int arcPos4 = 0;

  int lineCol = 255;
  int kickCol = 255;
  int dotsCol = 255;
  int arcCol = 255;

  int rectSize = 3;

  if (yNum == 14) {
    if (qNum == 1 || qNum == 3) 
      coeff = -.5;

    if (qNum == 3 || qNum == 2)
      coeff2 = -1; 

    lengthBeat = 400; 
    beatDist = 60;
    kickStart = 350;
    kickEnd = 340;
    kickDist = 60;
    dotsPos = 360;
    dotsDist = 70;

    lineNum = 10;
    dotNum = 50;
    arcNum = 20;

    arcPos1 = 780;
    arcPos2 = 880;
    arcPos3 = 830;
    arcPos4 = 880;

    rectSize = 5;

    lineCol = #FFE9BB;
    kickCol = #FFDA57;
    dotsCol = #FFC900;
    arcCol = #FFC900;
  }

  if (yNum == 12) {
    if (qNum == 1 || qNum == 3) 
      coeff = -.5;

    if (qNum == 3 || qNum == 2)
      coeff2 = -1; 

    lengthBeat = 300; 
    beatDist = 60;
    kickStart = 255;
    kickEnd = 235;
    kickDist = 80;
    dotsPos = 270;
    dotsDist = 70;

    lineNum = 15;
    dotNum = 40;
    arcNum = 50;

    arcPos1 = 580;
    arcPos2 = 680;
    arcPos3 = 630;
    arcPos4 = 680;

    rectSize = 3;

    lineCol = #FFE5CF;
    kickCol = #F59D3F;
    dotsCol = #F58200;
    arcCol = #F58200;
  }

  if (yNum == 10) {
    if (qNum == 1 || qNum == 3) 
      coeff = -.5;

    if (qNum == 3 || qNum == 2)
      coeff2 = -1; 

    lengthBeat = 210; 
    beatDist = 50;
    kickStart = 170;
    kickEnd = 150;
    kickDist = 30;
    dotsPos = 180;
    dotsDist = 60;

    lineNum = 20;
    dotNum = 50;
    arcNum = 50;

    arcPos1 = 390;
    arcPos2 = 490;
    arcPos3 = 450;
    arcPos4 = 490;

    rectSize = 3;  


    lineCol = #FFE3DD;
    kickCol = #F8836D;
    dotsCol = #F85435;
    arcCol = #F85435;
  }

  if (yNum == 8) {
    if (qNum == 1 || qNum == 3) 
      coeff = -.5;

    if (qNum == 3 || qNum == 2)
      coeff2 = -1; 

    kickStart = 80;
    kickEnd = 70;
    dotsPos = 90;
    lengthBeat = 115; 
    beatDist = 30;
    kickDist = 70;
    dotsDist = 40;

    lineNum = 30;
    dotNum = 60;
    arcNum = 50;

    arcPos1 = 280;
    arcPos2 = 300;
    arcPos3 = 200;
    arcPos4 = 300;

    rectSize = 1;

    lineCol = #F8CDC4;
    kickCol = #F8617A;
    dotsCol = #F8324B;
    arcCol = #F8324B;
  }

  if (yNum == 14 || yNum == 12 || yNum == 10 || yNum == 8 || yNum == 0) {
    if (qNum == 1) {

      arcStart = PI + HALF_PI;
      arcStop = TWO_PI;

      if (changeCol == 1) {
        lineCol = #FFE9BB;
        kickCol = #FFDA57;
        dotsCol = #FFC900;
        arcCol = #FFC900;
      }
    }

    if (qNum == 2) {

      arcStart = PI;
      arcStop = PI+HALF_PI;

      if (changeCol == 1) {

        lineCol = #FFE3DD;
        kickCol = #F8836D;
        dotsCol = #F85435;
        arcCol = #F85435;
      }
    }
    if (qNum == 3) {

      arcStart = HALF_PI;
      arcStop = PI;

      if (changeCol == 1) {
        lineCol = #FFE5CF;
        kickCol = #F59D3F;
        dotsCol = #F58200;
        arcCol = #F58200;
      }
    }
    if (qNum == 4) {

      arcStart = 0;
      arcStop = HALF_PI;

      if (changeCol == 1) {
        lineCol = #F8CDC4;
        kickCol = #F8617A;
        dotsCol = #F8324B;
        arcCol = #F8324B;
      }
    }
  }

  for (int i = 0; i < bsize - 1; i+=lineNum)
  { 
    float x = coeff2 * cos(i*coeff*PI/bsize);
    float y = coeff2 * sin(i*coeff*PI/bsize);

    float x1 = (lengthBeat + player.left.get(i)*beatDist)*x;
    float y1 = (lengthBeat + player.left.get(i)*beatDist)*y;
  
    stroke(lineCol, 60); ////lines in the middle
    line(r*x, r*y, x1, y1);
    
    if ( beat.isKick() ) {
      stroke(kickCol, 90); ////lines in the middle
      line((kickStart)*x, (kickStart)*y, (kickEnd + player.left.get(i)*kickDist)*x, (kickEnd + player.left.get(i)*kickDist)*y);
    }
  }

  beginShape();
  for (int i = 0; i < bsize; i+=dotNum)
  {      
    float x = coeff2 * cos(i*coeff*PI/bsize);
    float y = coeff2 * sin(i*coeff*PI/bsize);

    float x1 = (dotsPos + player.left.get(i)*dotsDist)*x;
    float y1 = (dotsPos + player.left.get(i)*dotsDist)*y;

    noFill();
    stroke(dotsCol, 90);  //// connecting line
    vertex(x1, y1);
    pushStyle();
    fill(dotsCol, 50);
    strokeWeight(2);
    ellipse(x1, y1, rectSize, rectSize);

    popStyle();
    
  }
  endShape();

  float rand1 = random(arcPos1, arcPos2);
  float rand2 = random(arcPos1, arcPos2);
  float rand3 = random(arcPos1, arcPos2);

  float rand1_2 = random(arcPos3, arcPos4);
  float rand2_2 = random(arcPos3, arcPos4);
  float rand3_2 = random(arcPos3, arcPos4);

  ////////////// HAT /////////////
  for (int i = 0; i < bsize; i+= arcNum)
  {    

    if ( beat.isHat() ) {

      noFill();
      stroke(arcCol, 10);  
      arc(0, 0, rand1, rand1_2, arcStart, arcStop);
      arc(0, 0, rand2, rand2_2, arcStart, arcStop);
      arc(0, 0, rand3, rand3_2, arcStart, arcStop);
    }
  }
}

void keyPressed() {
  AudioPlayer[][] mapper = { { player13, player14, player15, player16 }, { player9, player10, player11, player12 }, { player5, player6, player7, player8 }, { player, player2, player3, player4 } };
  for (int i = 0; i < mapper.length; i++){
    for (int j = 0; j < mapper[i].length; j++){
      mapper[i][j].mute();
    }
  }
  
   if (key == '1' || key == '2' || key == '3' || key == '4' || key == '`')
    activeKey = key;
}

void mouseClicked() {
  
  if(active_year != 0){
  
  //2008 = 0
  //2010 = 1
  //2012 = 2
  //2014 = 3
  AudioPlayer[][] mapper = { { player13, player14, player15, player16 }, { player9, player10, player11, player12 }, { player5, player6, player7, player8 }, { player, player2, player3, player4 } };
  int selected_year = 0;
  int selected_quad = 0;
  float mx = mouseX - (width/2);
  float my = -1 * (mouseY - (height/2));

  for (int i = 0; i < mapper.length; i++) {
    for (int j = 0; j < mapper[i].length; j++) {
      mapper[i][j].mute();
    }
  }


  if (active_year == 2008)
    selected_year = 0;
  else if (active_year == 2010)
    selected_year = 1;
  else if (active_year == 2012)
    selected_year = 2;
  else if (active_year == 2014)
    selected_year = 3;  

  if (mx > 0 && my > 0)
    selected_quad = 1;
  else if (mx < 0 && my > 0)
    selected_quad = 2;
  else if (mx < 0 && my < 0)
    selected_quad = 3;
  else if (mx > 0 && my < 0)
    selected_quad = 4;
   

  println("Selected Quad: " + selected_quad + " - " + "Selected Year: " + selected_year);
  if (mapper[selected_year][selected_quad - 1].isMuted())
    mapper[selected_year][selected_quad - 1].unmute();
  else
    mapper[selected_year][selected_quad - 1].mute();
}
}