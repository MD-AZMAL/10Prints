
float x , y , space,bias;
boolean render;

// space : magnitude of line
//bias : determines how often the a forward slash or a back slash occurs in each iteration 
//render : used as delimeter to stop the process of drawing the slashes

void setup(){
  size(700,700);
  background(255);
  render = true;
  x = 0;
  y = 0;
  space = 20; // 20 pixel (approx) length of each slash
  bias = 0.5; // 50 % chances for occuring of forward or backward slash
  strokeWeight(5); // determines the thickness of slashes
}

void draw(){
 if(render){
    if(random(1) < bias){
       line( x , y , x + space , y + space );  // draw forward slash if random number is less than bias
       // the magnitude of bias is proportional to no of times forward slash occurs ..... if inequality is '<'
    } else {
       line( x + space , y , x , y + space );    
    }
    x += space; // shifting the x origin each time by one space
 }
  if( x > width ){
  // one the width of the window is reached x sets back to zero and move y origin by one space for next line
   x = 0;
   y += space; 
  }
  
  if( y > height && render){
  // after rendering the whole window the frame is saved
    saveFrame("sp"+space+"bias"+bias+"_####.png");
    println("frame Saved");
    render = false;
  }
}


 
