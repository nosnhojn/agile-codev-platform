#ifndef __DISPLAY_MOCK_CPP__
#define __DISPLAY_MOCK_CPP__

#include "Display.h"
#include "gmock/gmock.h"

#include <iostream>

using namespace std;

class DisplayMock : public Display
{
  public:
    MOCK_METHOD0(_initscr, void());
    MOCK_METHOD0(_clear, void());
    MOCK_METHOD0(_endwin, void());
    MOCK_METHOD0(_refresh, void());
    MOCK_METHOD0(_getch, void());
    MOCK_METHOD1(_addstr, void(const char *));
    MOCK_METHOD2(_move, void(int,int));
};

#endif
