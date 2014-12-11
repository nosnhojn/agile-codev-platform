#include "Board.h"
#include "Drawing.h"
#include "DisplayNCurses.h"

int main()
{
  Board b;
  DisplayNCurses g;
  Drawing d(&b, &g);

  d.init();
 
  d.initialCell(30,40);
  d.initialCell(30,41);
  d.initialCell(30,42);
  d.initialCell(30,44);
  d.initialCell(31,40);
  d.initialCell(32,43);
  d.initialCell(32,44);
  d.initialCell(33,41);
  d.initialCell(33,42);
  d.initialCell(33,44);
  d.initialCell(34,40);
  d.initialCell(34,42);
  d.initialCell(34,44);

  d.initialCell(44,44);
  d.initialCell(44,45);
  d.initialCell(43,44);
  d.initialCell(43,45);

  d.initialCell(14,44);
  d.initialCell(14,45);
  d.initialCell(13,44);
  d.initialCell(13,45);

  d.initialCell(14,24);
  d.initialCell(14,25);
  d.initialCell(13,24);
  d.initialCell(13,25);
 
  d.play(5000);
}
