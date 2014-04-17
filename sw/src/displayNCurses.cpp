#include "displayNCurses.h"

displayNCurses::displayNCurses()
{
}

void displayNCurses::_initscr()
{
  initscr();
}

void displayNCurses::_clear()
{
  clear();
}

void displayNCurses::_endwin()
{
  endwin();
}


void displayNCurses::_refresh()
{
  refresh();
}

void displayNCurses::_getch()
{
  getch();
}

void displayNCurses::_addstr(const char * s)
{
  addstr(s);
}

void displayNCurses::_move(int row, int column)
{
  move(row, column);
}
