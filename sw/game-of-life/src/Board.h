#ifndef __BOARD__
#define __BOARD__

#include "Cell.h"

#include <iostream>
#include <string>
#include <list>

using namespace std;

class Board
{
  public:
    static const int ROW_SIZE = 54;
    static const int COLUMN_SIZE = 96;

    bool getState(int,int);
    void setLivingCell(int,int);
    void setDeadCell(int,int);
    int numLivingNeighbours(int,int);
    void refreshCell(int,int);
    void refreshBoard(void);
    bool legalColumn(int);
    bool isClear(void);

  private:
    Cell m_cells[ROW_SIZE][COLUMN_SIZE];
};

#endif
