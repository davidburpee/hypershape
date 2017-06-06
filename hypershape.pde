//hyper_patterns
//david_burpee
//20170527

//HYPERSHAPE 1 VARIABLES
int dx= 24;
int dy = 16;
int alength1 = dx * dy; //determines length of array by multiplying x and y # of shapes
int spacing1 = 50; //multiplier to control distance between shapes

//canvas size = (dx * spacing) X (dy * spacing)

//float rndam = 0; //amount of randomness applied to location

HYPERSHAPE[] HYPARRAY1 = new HYPERSHAPE[alength1];
HYPERSHAPE[] HYPARRAY2 = new HYPERSHAPE[alength1];

void setup() {
  size(1200, 800, P2D);
  colorMode(HSB, 360, 100, 100, 100);
  background(240, 20, 30);

//initialize first array
  int index = 0;
  for (int i = 0; i < dx; i ++) {
    for (int j = 0; j < dy; j ++) {
      HYPARRAY1[index++] = new HYPERSHAPE(i*spacing1, j*spacing1, .1*(radians(index)), 0);
    }
  }

//initialize second array
  int index2 = 0;
  for (int i = 0; i < dx; i ++) {
    for (int j = 0; j < dy; j ++) {
      HYPARRAY2[index2++] = new HYPERSHAPE(i*spacing1, j*spacing1, .4*(radians(index)), 150);
    }
  }

  //call methods for first shape
  for (int i = 0; i < HYPARRAY1.length; i++) {
    HYPARRAY1 [i].display();
    HYPARRAY2 [i].display();
  }
}

void draw() {
}
