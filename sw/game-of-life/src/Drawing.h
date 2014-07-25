#ifndef __DRAWING__
#define __DRAWING__

#include "Board.h"
#include "Display.h"

#include <iostream>
#include <string>
#include <list>
#include <unistd.h>

using namespace std;

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
    Drawing(Board * board,
            Display * display);
    ~Drawing();

    void init(void);
    bool isInitialized(void);
    void refreshDrawing(void);
    void play(int);
    void initialCell(int,int);
    void initializeBoard(void);

  private:
    Display * m_display;
    Board * m_board;
    list<cellCoord_t> m_initialCells;
    char m_newLine[96];

};

#endif
