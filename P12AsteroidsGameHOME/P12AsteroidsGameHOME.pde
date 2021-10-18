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
color ship2;


color lightblue = #0064FF;
color brown     = #552806;
color white     = #FFFFFF;
color darkblue  = #354EE5;
color purple    = #C528DB;
color red       = #FF0000;
color green     = #3AFF00;
color yellow    = #FFE308;
color orange    = #FF7300;
color cyan      = #00F4FF;

//Intro Gif
PImage[] asteroidgif;
int numberOfFramesAsteroid;
int fgif;

//Gameover Gif
PImage[] gameovergif;
int GOGframes;
int fgog;

//intro text;
int introtextsize;
boolean enlarge;

//Font
PFont Origin;

//variables
boolean upkey, downkey, leftkey, rightkey, spacekey, rkey, fkey;
Ship myShip;

Star[] myStars;
int numstars;

ArrayList<GameObject> myObjects;

//Game Variables
int AsteroidAmount;
int AsteroidDeaths;

//gameover
boolean victory;

//UFO stuff
int counter;

int tpamount;




void setup() {
  //Intro Gif
  numberOfFramesAsteroid = 50;
  asteroidgif = new PImage[numberOfFramesAsteroid];
  
  //gameover gif
  GOGframes = 65;
  gameovergif = new PImage[GOGframes];
  
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
  
  int X = 0;
  while (X < GOGframes) {
    gameovergif[X] = loadImage("frame_"+X+"_delay-0.14s.gif");
   X=X+1; 
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
  
  //Stars
  
  numstars = 200;
  myStars = new Star[numstars];
  
  int S = 0;
  while (S < numstars) {
    myStars[S] = new Star();
    S++;
  }
  
  //Game Setup
  AsteroidAmount = 15;
  AsteroidDeaths = 0;
  int f = 0;
  while (f < AsteroidAmount) {
   myObjects.add(new Asteroid());
   f++;
  }
  
  //summon UFO
    //myObjects.add(new UFO());
  
  //ship color
  ship = #FFFFFF;
  ship2 = cyan;
  
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
