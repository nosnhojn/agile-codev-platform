#include "Board.h"
#include "Drawing.h"
#include "DisplayNCurses.h"

int main()
{
  Board b;
  DisplayNCurses g;
  Drawing d(&b, &g);

  d.init();
 
  d.initialCell(10,10);
  d.initialCell(10,11);
  d.initialCell(10,12);
  d.initialCell(9,12);
  d.initialCell(8,11);

  d.initialCell(20,20);
  d.initialCell(20,21);
  d.initialCell(20,22);
  d.initialCell(19,22);
  d.initialCell(18,21);

  d.initialCell(40,40);
  d.initialCell(41,40);
  d.initialCell(42,40);
  d.initialCell(42,39);
  d.initialCell(41,38);

  d.initialCell(30,30);
  d.initialCell(30,31);
  d.initialCell(29,30);
  d.initialCell(29,31);
 
  d.play(200);
}
