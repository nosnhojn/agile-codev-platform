#include "Drawing.h"

Drawing::Drawing(Board * board,
                 Display * display)
: m_board(board), m_display(display)
{
}

Drawing::~Drawing()
{
  m_display->_endwin();
}

void Drawing::init()
{
  m_display->_initscr();
  m_display->_move(Board::ROW_SIZE,0);
}

void Drawing::refreshDrawing()
{
  for (int row=0; row<Board::ROW_SIZE; row+=1) {
    string s;
    for (int column=0; column<Board::COLUMN_SIZE; column+=1) {
      if (m_board->getState(row,column)) {
        s.append("X");
      }
      else {
        s.append(" ");
      }
    }
    m_display->_addstr((s).c_str());
  }
  m_display->_refresh();
}

bool Drawing::isInitialized()
{
  return (m_board->isClear() == false);
}

void Drawing::play(int iterations)
{
  m_display->_getch();
  m_display->_move(0,0);
  initializeBoard();
  for (int i=0; i<iterations; i+=1) {
    m_board->refreshBoard();
    refreshDrawing();
    usleep(REFRESH_RATE);
    //m_display->_clear();
  }
}

void Drawing::initialCell(int row, int column)
{
  m_initialCells.push_back(cellCoord_t(row,column));
}

void Drawing::initializeBoard()
{
  if (m_initialCells.size() > 0) {
    list<cellCoord_t>::iterator i = m_initialCells.begin();
    while (i != m_initialCells.end()) {
      m_board->setLivingCell(i->row, i->column);
      i++;
    }
  }
}
