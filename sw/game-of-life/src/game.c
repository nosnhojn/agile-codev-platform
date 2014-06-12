#include "Board.h"
#include "Drawing.h"
#include "DisplayNCurses.h"

int main()
{
  Board b;
  DisplayNCurses g;
  Drawing d(&b, &g);
 
  d.initialCell(20,20);
  d.initialCell(20,21);
  d.initialCell(20,22);
  d.initialCell(20,24);
  d.initialCell(21,20);
  d.initialCell(22,23);
  d.initialCell(22,24);
  d.initialCell(23,21);
  d.initialCell(23,22);
  d.initialCell(23,24);
  d.initialCell(24,20);
  d.initialCell(24,22);
  d.initialCell(24,24);
 
  d.play(200);
}
