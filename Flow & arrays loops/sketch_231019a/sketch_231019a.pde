void setup(){
  size(640,500);
}
    
void draw(){
  background(0);
  
  if((mouseX>width/2) & (mouseY>height/2)){
    fill(255,0,222);
    rect(320,250,320,247);
  }else if(mouseX>width/2 & mouseY<height/2){
    fill(255,0,0);
    rect(320,0,328,249);
  }else if(mouseX<width/2 & mouseY>height/2){
    fill(0,0,255);
    rect(0,249,320,256);
  }else{
    fill(50,255,2);
    rect(0,0,320,247);
  }
  
  stroke(255);
  line(1,248,width,height/2);
 
  stroke(255);
  line(320,0,width/2,height);
 
}
