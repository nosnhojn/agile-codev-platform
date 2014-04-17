#include "displayMock.h"

using namespace std;

DisplayMock::DisplayMock() :
    m_initScrFlag(false),
    m_clearFlag(false),
    m_endWinFlag(false),
    m_refreshFlag(false),
    m_getchFlag(false),
    m_moveRowCoord(99),
    m_rowNumber(0)
{ }


bool DisplayMock::initScrFlag()
{
  return m_initScrFlag;
}

bool DisplayMock::clearFlag()
{
  return m_clearFlag;
}

bool DisplayMock::endWinFlag()
{
  return m_endWinFlag;
}

bool DisplayMock::refreshFlag()
{
  return m_refreshFlag;
}

bool DisplayMock::getchFlag()
{
  return m_getchFlag;
}


void DisplayMock::_initscr()
{
  m_initScrFlag = true;
}

void DisplayMock::_clear()
{
  m_clearFlag = true;
}

void DisplayMock::_endwin()
{
  m_endWinFlag = true;
}


void DisplayMock::_refresh()
{
  m_refreshFlag = true;
  m_rowNumber = 0;
}

void DisplayMock::_getch()
{
  m_getchFlag = true;
}

string DisplayMock::getScreenRowNumber(int row)
{
  return m_row[row];
}

void DisplayMock::_addstr(const char * s)
{
  m_row[m_rowNumber++] = string(s);
}

void DisplayMock::_move(int row, int column)
{
  m_moveRowCoord = row;
}

int DisplayMock::moveRowCoord(void)
{
  return m_moveRowCoord;
}

void DisplayMock::ncursesReset()
{
 m_initScrFlag = false;
 m_clearFlag = false;
 m_endWinFlag = false;
 m_refreshFlag = false;
 m_getchFlag = false;
 m_moveRowCoord = 99;
 m_rowNumber = 0;
}
