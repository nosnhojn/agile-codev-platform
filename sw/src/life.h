#include "Display.h"

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

class Board
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
    Cell m_cells[ROW_SIZE][COLUMN_SIZE];
};

class Drawing
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
    Drawing(Board * b,
            Display * g);
    ~Drawing();

    bool isInitialized(void);
    void refreshDrawing(void);
    void play(int);
    void initialCell(int,int);
    void initializeBoard(void);

  private:
    Display * g;
    Board * m_board;
    list<cellCoord_t> m_initialCells;
};
