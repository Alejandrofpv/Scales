void setup(){
  size(900, 900);
}
void draw(){
  scalem(250, 250);
}
void scalem(int x, int y){
  float g = 0;
  noStroke();
  for(int y1 = 50; y1 > 5; y1-=5){
    for(int x3 = 200; x3 > 20; x3-=20){
      for(int x2 = 190; x2 > 19; x2-=19){
        for(int x1 = 110; x1 > 11; x1-=11){
          fill(g, 0, 0);                     
          beginShape();
          vertex(x, y);
          bezierVertex(x - x1, y - y1, x - x2, y - y1, x - x3, y);
          endShape();  
          g = g + 0.02;
        }
      }
    }
  }
  
  
  /*for(int x3 = 200; x3 >= 20; x3-=20){
    for(int y1 = 50; y1 >= 5; y1-=5){
      for(int x1 = 110; x1 >= 11; x1-=11){
        for(int x2 = 190; x2 >= 19; x2-=19){
          fill(g, 0, 0);                     
          beginShape();
          vertex(x, y);
          bezierVertex(x - x1, y - y1, x - x2, y - y1, x - 200, y);
          endShape();  
          g = g + 0.2;
        }
      }
    }
  }*/
  
  
  
  fill(0);
  beginShape();
  vertex(x, y);
  bezierVertex(x - 11, y - 5, x - 19, y - 5, x - 20, y);
  //vertex(x, y);
  //bezierVertex(x - 11, y + 5, x - 19, y + 5, x - 20, y);
  endShape();
  
  
  stroke(0, 0, 0);
  strokeWeight(5);
  point(x, y);
}
