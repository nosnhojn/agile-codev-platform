#include "DisplayNCurses.h"

DisplayNCurses::DisplayNCurses()
{
}

int DisplayNCurses::_initscr()
{
  initscr();
}

void DisplayNCurses::_clear()
{
  clear();
}

void DisplayNCurses::_endwin()
{
  endwin();
}


void DisplayNCurses::_refresh()
{
  refresh();
}

void DisplayNCurses::_getch()
{
  getch();
}

void DisplayNCurses::_addstr(const char * s)
{
  string str(s);
  str += '\n';
  addstr(str.c_str());
}

void DisplayNCurses::_move(int row, int column)
{
  move(row, column);
}
