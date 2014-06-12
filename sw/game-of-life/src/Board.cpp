#include "Board.h"

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
