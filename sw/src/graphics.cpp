#include "graphics.h"

graphics::graphics() :
    m_initScrFlag(false),
    m_clearFlag(false),
    m_endWinFlag(false),
    m_refreshFlag(false),
    m_getchFlag(false),
    m_moveRowCoord(99),
    m_rowNumber(0)
{ }


bool graphics::initScrFlag()
{
  return m_initScrFlag;
}

bool graphics::clearFlag()
{
  return m_clearFlag;
}

bool graphics::endWinFlag()
{
  return m_endWinFlag;
}

bool graphics::refreshFlag()
{
  return m_refreshFlag;
}

bool graphics::getchFlag()
{
  return m_getchFlag;
}


void graphics::initscr()
{
  m_initScrFlag = true;
}

void graphics::clear()
{
  m_clearFlag = true;
}

void graphics::endwin()
{
  m_endWinFlag = true;
}


void graphics::refresh()
{
  m_refreshFlag = true;
  m_rowNumber = 0;
}

void graphics::getch()
{
  m_getchFlag = true;
}

string graphics::getScreenRowNumber(int row)
{
  return m_row[row];
}

void graphics::addstr(const char * s)
{
  m_row[m_rowNumber++] = string(s);
}

void graphics::move(int row, int column)
{
  m_moveRowCoord = row;
}

int graphics::moveRowCoord(void)
{
  return m_moveRowCoord;
}

void graphics::ncursesReset()
{
 m_initScrFlag = false;
 m_clearFlag = false;
 m_endWinFlag = false;
 m_refreshFlag = false;
 m_getchFlag = false;
 m_moveRowCoord = 99;
 m_rowNumber = 0;
}
