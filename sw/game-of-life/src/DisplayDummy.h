#ifndef __DISPLAY_DUMMY_CPP__
#define __DISPLAY_DUMMY_CPP__

#include "Display.h"

#include <string>
#include <iostream>

using namespace std;

class DisplayDummy : public Display
{
  public:
    DisplayDummy();

    int  _initscr();
    void _clear();
    void _endwin();
    void _refresh();
    void _getch();
    void _addstr(const char *);
    void _move(int,int);
};

#endif
