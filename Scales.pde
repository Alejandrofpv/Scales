

void setup(){
  size(900, 900);
}

void draw(){
  boolean shift = true;
  int r = 0;
  for(int y = 0; y <= 900; y+=50){
    for(int x = 0; x <= 900; x+=50){
      if(shift == true)
        scalem(x + 25, y, r);
      else
        scalem(x, y, r);
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
    r = r + 20;
  }
}

void scalem(int x, int y, int r){
  stroke(1);
  fill(r, 0, 0);
  noStroke();
  bezier(x, y, x + 00, y + 10, x, y + 20, x + 30, y + 30);
  bezier(x + 30, y + 10, x, y, x + 30, y + 30, x, y + 20);
}
