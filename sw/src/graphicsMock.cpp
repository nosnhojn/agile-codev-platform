#include "graphicsMock.h"

using namespace std;

graphicsMock::graphicsMock() :
    m_initScrFlag(false),
    m_clearFlag(false),
    m_endWinFlag(false),
    m_refreshFlag(false),
    m_getchFlag(false),
    m_moveRowCoord(99),
    m_rowNumber(0)
{ }


bool graphicsMock::initScrFlag()
{
  return m_initScrFlag;
}

bool graphicsMock::clearFlag()
{
  return m_clearFlag;
}

bool graphicsMock::endWinFlag()
{
  return m_endWinFlag;
}

bool graphicsMock::refreshFlag()
{
  return m_refreshFlag;
}

bool graphicsMock::getchFlag()
{
  return m_getchFlag;
}


void graphicsMock::_initscr()
{
  m_initScrFlag = true;
}

void graphicsMock::_clear()
{
  m_clearFlag = true;
}

void graphicsMock::_endwin()
{
  m_endWinFlag = true;
}


void graphicsMock::_refresh()
{
  m_refreshFlag = true;
  m_rowNumber = 0;
}

void graphicsMock::_getch()
{
  m_getchFlag = true;
}

string graphicsMock::getScreenRowNumber(int row)
{
  return m_row[row];
}

void graphicsMock::_addstr(const char * s)
{
  m_row[m_rowNumber++] = string(s);
}

void graphicsMock::_move(int row, int column)
{
  m_moveRowCoord = row;
}

int graphicsMock::moveRowCoord(void)
{
  return m_moveRowCoord;
}

void graphicsMock::ncursesReset()
{
 m_initScrFlag = false;
 m_clearFlag = false;
 m_endWinFlag = false;
 m_refreshFlag = false;
 m_getchFlag = false;
 m_moveRowCoord = 99;
 m_rowNumber = 0;
}
