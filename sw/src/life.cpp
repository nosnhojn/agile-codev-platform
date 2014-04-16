#include "life.h"

cell::cell() : m_aliveState(false)
{
}

void cell::setState(bool s)
{
  m_aliveState = s;
}

bool cell::getState()
{
  return m_aliveState;
}

bool cell::isAlive(int numNeighbours)
{
  if (numNeighbours == 2)
    return m_aliveState;

  else if (numNeighbours == 3)
    return m_aliveState = true;

  else
    return m_aliveState = false;
}

bool board::getState(int row, int column)
{
  return m_cells[row][column].getState();
}

void board::setLivingCell(int row, int column)
{
  m_cells[row][column].setState(true);
}

void board::setDeadCell(int row, int column)
{
  m_cells[row][column].setState(false);
}

int board::numLivingNeighbours(int row, int column)
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

bool board::legalColumn(int column)
{
  return (column >= 0) && (column <= COLUMN_SIZE-1);
}

void board::refreshCell(int row, int column)
{
  m_cells[row][column].isAlive(numLivingNeighbours(row,column));
}

void board::refreshBoard()
{
  board tmpBoard(*this);

  for (int row=0; row<board::ROW_SIZE; row+=1) {
    for (int column=0; column<board::COLUMN_SIZE; column+=1) {
      m_cells[row][column].isAlive(tmpBoard.numLivingNeighbours(row,column));
    }
  }
}

bool board::isClear()
{
  for (int row=0; row<board::ROW_SIZE; row+=1) {
    for (int column=0; column<board::COLUMN_SIZE; column+=1) {
      if (m_cells[row][column].getState() == true) {
        return false;
      }
    }
  }

  return true;
}


/*
void board::init()
{
  setLivingCell(18,26);
  setLivingCell(19,27);
  setLivingCell(20,25);
  setLivingCell(20,26);
  setLivingCell(20,27);
}
*/

drawing::drawing(board * b) : m_board(b)
{
  initscr();
  move(board::ROW_SIZE,0);
}

drawing::~drawing()
{
  endwin();
}

void drawing::refreshDrawing()
{
  for (int row=0; row<board::ROW_SIZE; row+=1) {
    string s;
    for (int column=0; column<board::COLUMN_SIZE; column+=1) {
      if (m_board->getState(row,column)) {
        s.append("X");
      }
      else {
        s.append(" ");
      }
    }
    addstr((s + '\n').c_str());
  }
  refresh();
}

bool drawing::isInitialized()
{
  return (m_board->isClear() == false);
}

void drawing::play(int iterations)
{
  getch();
  move(0,0);
  initializeBoard();
  for (int i=0; i<iterations; i+=1) {
    m_board->refreshBoard();
    refreshDrawing();
    usleep(500000);
    clear();
  }
}

void drawing::initialCell(int row, int column)
{
  m_initialCells.push_back(cellCoord_t(row,column));
}

void drawing::initializeBoard()
{
 if (m_initialCells.size() > 0) {
   list<cellCoord_t>::iterator i = m_initialCells.begin();
   while (i != m_initialCells.end()) {
     m_board->setLivingCell(i->row, i->column);
     i++;
   }
 }
}
