#ifndef __CELL__
#define __CELL__

#include <iostream>
#include <string>
#include <list>

using namespace std;

class Cell
{
  bool m_aliveState;

  public:
    Cell();

    void setState(bool);
    bool getState(void);
    bool isAlive(int);
};

#endif
