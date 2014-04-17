#include "life.h"

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

bool Board::getState(int row, int column)
{
  return m_cells[row][column].getState();
}

void Board::setLivingCell(int row, int column)
{
  m_cells[row][column].setState(true);
}

void Board::setDeadCell(int row, int column)
{
  m_cells[row][column].setState(false);
}

int Board::numLivingNeighbours(int row, int column)
{
  int r = 0;

  // row above
  if (row > 0) {
    r += legalColumn(column-1) && (m_cells[row-1][column-1].getState() == true);
    r += (m_cells[row-1][column].getState() == true);
    r += legalColumn(column+1) && (m_cells[row-1][column+1].getState() == true);
  }

  // same row
  r += (legalColumn(column-1) && m_cells[row][column-1].getState() == true);
  r += (legalColumn(column+1) && m_cells[row][column+1].getState() == true);

  // row below
  if (row < ROW_SIZE-1) {
    r += (legalColumn(column-1) && m_cells[row+1][column-1].getState() == true);
    r += (m_cells[row+1][column].getState() == true);
    r += legalColumn(column+1) && (m_cells[row+1][column+1].getState() == true);
  }

  return r;
}

bool Board::legalColumn(int column)
{
  return (column >= 0) && (column <= COLUMN_SIZE-1);
}

void Board::refreshCell(int row, int column)
{
  m_cells[row][column].isAlive(numLivingNeighbours(row,column));
}

void Board::refreshBoard()
{
  Board tmpBoard(*this);

  for (int row=0; row<Board::ROW_SIZE; row+=1) {
    for (int column=0; column<Board::COLUMN_SIZE; column+=1) {
      m_cells[row][column].isAlive(tmpBoard.numLivingNeighbours(row,column));
    }
  }
}

bool Board::isClear()
{
  for (int row=0; row<Board::ROW_SIZE; row+=1) {
    for (int column=0; column<Board::COLUMN_SIZE; column+=1) {
      if (m_cells[row][column].getState() == true) {
        return false;
      }
    }
  }

  return true;
}

Drawing::Drawing(Board * b,
                 Display * g)
: m_board(b), g(g)
{
  g->_initscr();
  g->_move(Board::ROW_SIZE,0);
}

Drawing::~Drawing()
{
  g->_endwin();
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
    g->_addstr((s + '\n').c_str());
  }
  g->_refresh();
}

bool Drawing::isInitialized()
{
  return (m_board->isClear() == false);
}

void Drawing::play(int iterations)
{
  g->_getch();
  g->_move(0,0);
  initializeBoard();
  for (int i=0; i<iterations; i+=1) {
    m_board->refreshBoard();
    refreshDrawing();
    usleep(500000);
    g->_clear();
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
