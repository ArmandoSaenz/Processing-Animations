float h;
float h0 = 1;
float g = 9.81;
float A = PI*1.55*1.55;
float R = 429500;
float rho = 1000;
float t=0;
float hrect = 0;

void setup()
{
  size(600,800,P2D);
}

void draw()
{
  h = h0*exp(-rho*g/(R*A) * t); //Compute water level in tank
  hrect = map(h, 0, h0, 0, 600); //Compute water level in pixels
  println(h); //Print on screen the valur of h
  background(255); //Clean the window
  
  //Drawing tank
  stroke(0); //Line color
  strokeWeight(4); //Line width
  noFill(); //The shape is transparent
  rect(100, 100, 400, 600); //Draw a rectangle
  
  //Drawing water level
  fill(0, 0, 255); //The shape is filled with blue color 
  strokeWeight(0); //Shape without outside line
  rect(100, 100 + 600 - hrect, 400, hrect); //Draw the water level
  
  t = t + 0.100; //Increase the time
}
