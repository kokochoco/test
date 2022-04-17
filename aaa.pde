int x,y;
int j,k;

int n = 80;
Ball[] b = new Ball[n];

void setup() {
  size(1244
 ,752) ;

  for(int i=0; i<n; i++){
    b[i] = new Ball() ;
  }}
  
  
  void draw() {
     background(0);
        rect(10,10,width,height);
     fill(10,200) ;
     stroke(color(29,100,225));
    
   smooth();
    
          
      x= 0 ;
 for (j=0; j<20; j=j+1) {
  y= 0 ;
   for (k=0; k<20; k=k+1) {
      
    // point(x,y) ;
     y = y + 70 ;
     }
     x = x + 70 ;
    
    
   
    
    //noStroke() ;
   
    
    b[0].step(mouseX,mouseY);
    for(int i=1; i<n; i++){
      b[i].step(b[i-1].x,b[i-1].y);
      

 }
      
    }}
    



class Ball {
  float x,y,vx,vy,ax,ay;
  float f= 0.02 ;
  float e= 0.843 ;
  color c ;
  
  Ball() {
    x = random(width);
    y = random(height);
    c=color(random(200),random(200),200) ;
    //strokeWeight(20);
    //stroke(color(225,0,0));
    
    
  }
    
void step(float mx, float my) {
  
  strokeWeight(dist(0,0,vx,vy)/10*8);
  stroke(c);
  point(x,y);
  
  ax=(mx-x)*f;
  ay=(my-y)*f;
  
  vx+=ax;
  vy+=ay;
  
  x+=vx;
  y+=vy;
  
  vx*=e;
  vy*=e;
      
}}
