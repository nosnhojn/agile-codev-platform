#ifndef __GRAPHICS_CPP__
#define __GRAPHICS_CPP__

#include <string>
#include <iostream>

using namespace std;

class graphics
{
  public:
    graphics();

    virtual void _initscr() =0;
    virtual void _clear() =0;
    virtual void _endwin() =0;
    virtual void _refresh() =0;
    virtual void _getch() =0;
    virtual void _addstr(const char *) =0;
    virtual void _move(int,int) =0;
};

#endif
