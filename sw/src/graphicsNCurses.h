#ifndef __GRAPHICS_NCURSES_CPP__
#define __GRAPHICS_NCURSES_CPP__

#include "graphics.h"

#include <string>
#include <iostream>
#include <ncurses.h>

using namespace std;

class graphicsNCurses : public graphics
{
  public:
    graphicsNCurses();

    void _initscr();
    void _clear();
    void _endwin();
    void _refresh();
    void _getch();
    void _addstr(const char *);
    void _move(int,int);
};

#endif
