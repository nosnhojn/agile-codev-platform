#ifndef __GRAPHICS_MOCK_CPP__
#define __GRAPHICS_MOCK_CPP__

#include "graphics.h"

#include <iostream>

using namespace std;

class graphicsMock : public graphics
{
  private:
    bool m_initScrFlag;
    bool m_clearFlag;
    bool m_endWinFlag;
    bool m_refreshFlag;
    bool m_getchFlag;
    int m_moveRowCoord;

    int  m_rowNumber;
    string m_row[50];

  public:
    graphicsMock();

    bool initScrFlag();
    bool clearFlag();
    bool endWinFlag();
    bool refreshFlag();
    bool getchFlag();
    string getScreenRowNumber(int);
    int moveRowCoord(void);
    void ncursesReset(void);

    // inherited from graphics
    void _initscr();
    void _clear();
    void _endwin();
    void _refresh();
    void _getch();
    void _addstr(const char *);
    void _move(int,int);
};

#endif
