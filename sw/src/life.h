#include "graphics.h"

#include <iostream>
#include <string>
#include <list>

using namespace std;

class cell
{
  bool m_aliveState;

  public:
    cell();

    void setState(bool);
    bool getState(void);
    bool isAlive(int);
};

class board
{
  public:
    static const int ROW_SIZE = 50;
    static const int COLUMN_SIZE = 100;

    bool getState(int,int);
    void setLivingCell(int,int);
    void setDeadCell(int,int);
    int numLivingNeighbours(int,int);
    void refreshCell(int,int);
    void refreshBoard(void);
    bool legalColumn(int);
    bool isClear(void);

  private:
    cell m_cells[ROW_SIZE][COLUMN_SIZE];
};

class drawing
{
  struct cellCoord_t
  {
    int row;
    int column;

    cellCoord_t(int r, int c) {
      row = r;
      column = c;
    }
  };

  public:
    graphics g;

    drawing(board * b);
    ~drawing();

    bool isInitialized(void);
    void refreshDrawing(void);
    void play(int);
    void initialCell(int,int);
    void initializeBoard(void);

  private:
    board * m_board;
    list<cellCoord_t> m_initialCells;
};
