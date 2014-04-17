#include "displayMock.h"

using namespace std;

displayMock::displayMock() :
    m_initScrFlag(false),
    m_clearFlag(false),
    m_endWinFlag(false),
    m_refreshFlag(false),
    m_getchFlag(false),
    m_moveRowCoord(99),
    m_rowNumber(0)
{ }


bool displayMock::initScrFlag()
{
  return m_initScrFlag;
}

bool displayMock::clearFlag()
{
  return m_clearFlag;
}

bool displayMock::endWinFlag()
{
  return m_endWinFlag;
}

bool displayMock::refreshFlag()
{
  return m_refreshFlag;
}

bool displayMock::getchFlag()
{
  return m_getchFlag;
}


void displayMock::_initscr()
{
  m_initScrFlag = true;
}

void displayMock::_clear()
{
  m_clearFlag = true;
}

void displayMock::_endwin()
{
  m_endWinFlag = true;
}


void displayMock::_refresh()
{
  m_refreshFlag = true;
  m_rowNumber = 0;
}

void displayMock::_getch()
{
  m_getchFlag = true;
}

string displayMock::getScreenRowNumber(int row)
{
  return m_row[row];
}

void displayMock::_addstr(const char * s)
{
  m_row[m_rowNumber++] = string(s);
}

void displayMock::_move(int row, int column)
{
  m_moveRowCoord = row;
}

int displayMock::moveRowCoord(void)
{
  return m_moveRowCoord;
}

void displayMock::ncursesReset()
{
 m_initScrFlag = false;
 m_clearFlag = false;
 m_endWinFlag = false;
 m_refreshFlag = false;
 m_getchFlag = false;
 m_moveRowCoord = 99;
 m_rowNumber = 0;
}
