//Grayson Lilly
//1-4
//Asteroids Game

//mode framework
int mode;
final int intro    = 0;
final int game     = 1;
final int pause    = 2;
final int gameover = 3;

//Colors
color ship;

color lightblue = #0064FF;

//Intro Gif
PImage[] asteroidgif;
int numberOfFramesAsteroid;
int fgif;

//intro text;
int introtextsize;
boolean enlarge;

//Font
PFont Origin;

//variables
boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
ArrayList<GameObject> myObjects;

//Game Variables
int AsteroidAmount;
int AsteroidDeaths;

int immunity;

//gameover
boolean victory;

//UFO stuff
int counter;



void setup() {
  //Intro Gif
  numberOfFramesAsteroid = 50;
  asteroidgif = new PImage[numberOfFramesAsteroid];
  
  //Intro Text
  introtextsize = 100;
  enlarge = false;
 
  //Font
  Origin = createFont("Origin.ttf", 100);
  
  int i = 0;
  while (i < numberOfFramesAsteroid) {
    asteroidgif[i] = loadImage("frame_"+i+"_delay-0.06s.gif");
   i=i+1; 
  }
  
  //basic setup
  mode = intro;
  size(800, 600, FX2D);
  imageMode(CENTER);
  rectMode(CENTER);
  
  //array stuff
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  
  //Game Setup
  immunity = 0;
  AsteroidAmount = 1;
  int f = 0;
  while (f < AsteroidAmount) {
   myObjects.add(new Asteroid());
   f++;
  }
  
  //summon UFO
    //myObjects.add(new UFO());
  
  //ship color
  ship = #FFFFFF;
  
  //UFO
  counter = 0;
}

void draw() {//=
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameOver();
  } else {
    println("ERROR: MODE = "+mode);
  }
}//=
