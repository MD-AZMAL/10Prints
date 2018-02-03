
float x , y , space,bias;
boolean render;

void setup(){
  size(700,700);
  background(255);
  render = true;
  x = 0;
  y = 0;
  space = 20;
  bias = 0.5;
  strokeWeight(5);
}

void draw(){
 if(render){
    if(random(1) < bias){
       line( x , y , x + space , y + space ); 
    } else {
       line( x + space , y , x , y + space );    
    }
    x += space;
 }
  if( x > width ){
   x = 0;
   y += space;
  }
  
  if( y > width && render){
    saveFrame("sp"+space+"bias"+bias+"_####.png");
    println("frame Saved");
    render = false;
  }
}


 