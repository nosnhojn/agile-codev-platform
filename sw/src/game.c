#include "Board.h"
#include "Drawing.h"
#include "DisplayNCurses.h"

int main()
{
  Board b;
  DisplayNCurses g;
  Drawing d(&b, &g);
 
  for (int i=20; i<51; i+=1) {
    d.initialCell(10,i);
  }
  for (int i=5; i<=25; i+=1) {
    d.initialCell(i,25);
  }
 
  d.play(200);
}
