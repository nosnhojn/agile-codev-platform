#ifndef __GRAPHICS_CPP__
#define __GRAPHICS_CPP__

#include <string>

using namespace std;

class graphics
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
    graphics();

    bool initScrFlag();
    void initscr();

    bool clearFlag();
    void clear();

    bool endWinFlag();
    void endwin();

    bool refreshFlag();
    void refresh();

    bool getchFlag();
    void getch();

    void addstr(const char *);

    string getScreenRowNumber(int);

    void move(int,int);
    int moveRowCoord(void);

    void ncursesReset(void);
};

#endif
