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
#include "xil_printf.h"

void Drawing::refreshDrawing()
{
  for (int row=0; row<Board::ROW_SIZE; row+=1) {
    for (int column=0; column<Board::COLUMN_SIZE; column+=1) {
      if (m_board->getState(row,column)) {
        m_newLine[column] = 'X';
      }
      else {
        m_newLine[column] = ' ';
      }
    }
    m_display->_addstr(m_newLine);
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
  }
}

void Drawing::initialCell(int row, int column)
{
	xil_printf("WHAT THE HECK at %d %d\n", row, column);

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
