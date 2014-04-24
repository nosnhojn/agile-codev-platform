#include "DisplayXil.h"

DisplayXil::DisplayXil()
{
}

DisplayXil::DisplayXil(DisplayXilDriver * d) : m_driver(d)
{
}

void DisplayXil::_initscr()
{
  m_driver->initHw();
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
