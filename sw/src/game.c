#include "life.h"
#include "graphicsNCurses.h"

int main()
{
  board b;
  graphicsNCurses g;

  drawing d(&b, &g);
 
  for (int i=20; i<51; i+=1) {
    d.initialCell(10,i);
  }
  for (int i=5; i<=25; i+=1) {
    d.initialCell(i,25);
  }
 
  d.play(200);
}
