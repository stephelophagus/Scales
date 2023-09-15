void setup() {
  size(800, 800);  //feel free to change the size\
  //noLoop(); //stops the draw() function from repeating
}
void draw() {
  
  background(#F2D0E0);
  for (int y = 0; y < 900; y = y + 100) 
      for (int x = 0; x< 900; x = x + 100) 
        scale(x, y);
 


}

void scale(int x, int y) {
    //head
    fill(#E0722D);
    stroke(#52280F);
    strokeWeight(1);
    ellipse(x, y, 90, 95);

    //left ear
    beginShape();
    curveVertex(x-20, y-43);
    curveVertex(x-20, y-43);
    curveVertex(x-45, y-45);
    curveVertex(x-45, y-12);
    curveVertex(x-45, y-12);
    endShape();

    //right ear
    beginShape();
    curveVertex(x+20, y-43);
    curveVertex(x+20, y-43);
    curveVertex(x+45, y-45);
    curveVertex(x+45, y-12);
    curveVertex(x+45, y-12);
    endShape();

    //eyes
    fill(0);

    ellipse(x-20, y-10, 10, 20);
    ellipse(x+20, y-10, 10, 20);
    strokeWeight(2);

    //mouth
    line(x-20, y+20, x+20, y+20);

    //tongue
    noStroke();
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    rect(x, y+21, 10, 10);
    ellipse(x+5, y+31, 10, 10);
  
}
