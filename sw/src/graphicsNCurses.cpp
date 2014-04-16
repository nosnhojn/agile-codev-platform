#include "graphicsNCurses.h"

graphicsNCurses::graphicsNCurses()
{
  cout << "BOG" << endl;
}

void graphicsNCurses::_initscr()
{
  initscr();
}

void graphicsNCurses::_clear()
{
  clear();
}

void graphicsNCurses::_endwin()
{
  endwin();
}


void graphicsNCurses::_refresh()
{
  refresh();
}

void graphicsNCurses::_getch()
{
  getch();
}

void graphicsNCurses::_addstr(const char * s)
{
  addstr(s);
}

void graphicsNCurses::_move(int row, int column)
{
  move(row, column);
}
