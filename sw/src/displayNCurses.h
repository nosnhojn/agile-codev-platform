#ifndef __DISPLAY_NCURSES_CPP__
#define __DISPLAY_NCURSES_CPP__

#include "display.h"

#include <string>
#include <iostream>
#include <ncurses.h>

using namespace std;

class DisplayNCurses : public Display
{
  public:
    DisplayNCurses();

    void _initscr();
    void _clear();
    void _endwin();
    void _refresh();
    void _getch();
    void _addstr(const char *);
    void _move(int,int);
};

#endif
