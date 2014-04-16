#include "ncursesMock.h"
#include <iostream>

using namespace std;

bool m_initScrFlag = false;
bool m_clearFlag = false;
bool m_endWinFlag = false;
bool m_refreshFlag = false;
bool m_getchFlag = false;
int m_moveRowCoord = 99;

int  m_rowNumber = 0;
string m_row[50];

bool initScrFlag()
{
  return m_initScrFlag;
}

bool clearFlag()
{
  return m_clearFlag;
}

bool endWinFlag()
{
  return m_endWinFlag;
}

bool refreshFlag()
{
  return m_refreshFlag;
}

bool getchFlag()
{
  return m_getchFlag;
}


void initscr()
{
  m_initScrFlag = true;
}

void clear()
{
  m_clearFlag = true;
}

void endwin()
{
  m_endWinFlag = true;
}


void refresh()
{
  m_refreshFlag = true;
  m_rowNumber = 0;
}

void getch()
{
  m_getchFlag = true;
}

string getScreenRowNumber(int row)
{
  return m_row[row];
}

void addstr(const char * s)
{
  m_row[m_rowNumber++] = string(s);
}

void move(int row, int column)
{
  m_moveRowCoord = row;
}

int moveRowCoord(void)
{
  return m_moveRowCoord;
}

void ncursesReset()
{
 m_initScrFlag = false;
 m_clearFlag = false;
 m_endWinFlag = false;
 m_refreshFlag = false;
 m_getchFlag = false;
 m_moveRowCoord = 99;
 m_rowNumber = 0;
}
