#include "Cell.h"

Cell::Cell() : m_aliveState(false)
{
}

void Cell::setState(bool s)
{
  m_aliveState = s;
}

bool Cell::getState()
{
  return m_aliveState;
}

bool Cell::isAlive(int numNeighbours)
{
  if (numNeighbours == 2)
    return m_aliveState;

  else if (numNeighbours == 3)
    return m_aliveState = true;

  else
    return m_aliveState = false;
}
