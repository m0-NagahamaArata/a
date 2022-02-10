float baseH = 20;

float arm1W = 20;
float arm1D = 10;
float arm1L = 20;

float arm2W = 10;
float arm2D = 10;
float arm2L = 30;

float arm3W = 5;
float arm3D = 5;
float arm3L = 30;


float armW1 = 10;
float armW2 = 10;
float armW3 = 5;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float l3 = 0;

float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'o'){
      angle0 = angle0 + dif;
    }
    if(key == 'O'){
      angle0 = angle0 - dif;
    }
    if(key == 'a'){
      angle1 = angle1 + dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 'b'){
      angle2 = angle2 + dif;
    }
    if(key == 'B'){
      angle2 = angle2 - dif;
    }
    if(key == 'g'){
      angle3 = angle3 + dif;
    }
    if(key == 'G'){
      angle3 = angle3 - dif;
    }
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  xyzAxis(20); //xyzAxis @ base
  translate(0,0,baseH/2);
  fill(150);
  box(10,10,baseH);
  
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,0,baseH/2+arm1L/2);
  fill(125);
  box(arm1W,arm1D,arm1L);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,0);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(0,0,arm2L/2);
  fill(175);
  box(arm2W,arm2D,arm2L);
  
  //3rd link
  // go to 3rd joint
  translate(0, 0, arm2L/2);
  rotateX(radians(angle3));
  // go to center of 3rd joint
  translate(0, 0, arm3L/2);
  fill(200);
  box(arm3W,arm3D,arm3L);
  
  //xyzAxis @ Pr
  translate(0, 0, arm3L/2);
  xyzAxis(10);

}
