#include "DisplayXil.h"

DisplayXil::DisplayXil( IicCtrl * iicCtrl = 0 ) :
  m_iicCtrl(iicCtrl)
{
}


int DisplayXil::_initscr()
{
  return m_iicCtrl->init();
}

void DisplayXil::_clear()
{
}

void DisplayXil::_endwin()
{
}

void DisplayXil::_refresh()
{
}

void DisplayXil::_getch()
{
}

void DisplayXil::_addstr(const char * str)
{
}

void DisplayXil::_move(int x, int y)
{
}
