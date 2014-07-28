#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "Cell.h"
#include "Board.h"
#include "Drawing.h"
#include "DisplayMock.h"

using namespace testing;

class DrawingTest : public testing::Test
{
  public:
    Board board;
    Drawing * drawing;
    string checkRow;
    string emptyRow;
    Cell cell;
    DisplayMock display;

    ExpectationSet req;

    // not terminated with a null char so do a "who cares" off the end of the array
    // to ignore any garbage
    DrawingTest() : checkRow("^" + string(Board::COLUMN_SIZE, ' ') + ".*"),
                    emptyRow("^" + string(Board::COLUMN_SIZE, ' ') + ".*")
    {
      drawing = new Drawing(&board, &display);
    }

    ~DrawingTest()
    {
      if (drawing != 0) delete drawing;
    }

    void newLivingCell(int row, int column, char c)
    {
      checkRow[column+1] = c;
      board.setLivingCell(row, column);
    }

    void killDrawing()
    {
      delete drawing;
      drawing = 0;
    }
};

TEST_F(DrawingTest, ScreenInit) {
  EXPECT_CALL(display, _initscr()).Times(1);

  drawing->init();
}

TEST_F(DrawingTest, ScreenRefreshed) {
  EXPECT_CALL(display, _refresh()).Times(1);

  drawing->refreshDrawing();
}

TEST_F(DrawingTest, ScreenRefreshedRow0) {
  EXPECT_CALL(display, _addstr(MatchesRegex(emptyRow.c_str()))).Times(54);

  drawing->refreshDrawing();
}

TEST_F(DrawingTest, ScreenRefreshedRow0WithOneLivingCell) {
  newLivingCell(0,0,'0');

  req = EXPECT_CALL(display, _addstr(MatchesRegex(checkRow.c_str()))).Times(1);
  EXPECT_CALL(display, _addstr(MatchesRegex(emptyRow.c_str()))).Times(53).After(req);

  drawing->refreshDrawing();
}

TEST_F(DrawingTest, ScreenRefreshedRow0WithAllLivingCells) {
  newLivingCell(0,0,'1');
  for (int c=1; c<Board::COLUMN_SIZE-1; c+=1) {
    newLivingCell(0,c,'2');
  }
  newLivingCell(0,Board::COLUMN_SIZE-1,'1');

  req = EXPECT_CALL(display, _addstr(MatchesRegex(checkRow.c_str()))).Times(1);
  EXPECT_CALL(display, _addstr(MatchesRegex(emptyRow.c_str()))).Times(53).After(req);

  drawing->refreshDrawing();
}

TEST_F(DrawingTest, ScreenStartsUnInitialized) {
  EXPECT_FALSE(drawing->isInitialized());
}

TEST_F(DrawingTest, ScreenWaitForPromptAtPos) {
  req = EXPECT_CALL(display, _initscr()).Times(1);
  EXPECT_CALL(display, _move(54,0)).Times(1).After(req);

  drawing->init();
}

TEST_F(DrawingTest, endWithDestructor) {
  EXPECT_CALL(display, _endwin()).Times(1);

  killDrawing();
}

TEST_F(DrawingTest, ScreenWaitForPrompt) {
  EXPECT_CALL(display, _getch()).Times(1);

  drawing->play(1);
}

TEST_F(DrawingTest, InitializeBoard) {
  drawing->initialCell(0,1);
  drawing->initializeBoard();
  EXPECT_TRUE(drawing->isInitialized());
}

TEST_F(DrawingTest, InitializeAllCells) {
  drawing->initialCell(0,0);
  drawing->initialCell(0,1);
  drawing->initialCell(0,2);

  drawing->initializeBoard();

  EXPECT_TRUE(board.getState(0,0));
  EXPECT_TRUE(board.getState(0,1));
  EXPECT_TRUE(board.getState(0,2));
}

TEST_F(DrawingTest, PlayFirstBoardRefresh) {
  drawing->initialCell(0,0);
  drawing->initialCell(0,2);
  drawing->initialCell(0,3);
  drawing->initialCell(0,4);
  drawing->initialCell(1,3);
  drawing->initialCell(2,4);
  drawing->initialCell(3,2);
  drawing->initialCell(3,3);
  drawing->initialCell(3,4);

  drawing->play(1);

  EXPECT_EQ(board.getState(1,0), cell.isAlive(1)); // 1 neighbour...
  EXPECT_EQ(board.getState(1,1), cell.isAlive(2)); // 2 neighbours...
  EXPECT_EQ(board.getState(1,2), cell.isAlive(3)); // etc...
  EXPECT_EQ(board.getState(1,4), cell.isAlive(4)); // etc...
  EXPECT_EQ(board.getState(2,3), cell.isAlive(5)); // etc
}

TEST_F(DrawingTest, PlayDrawingRefresh) {
  EXPECT_CALL(display, _refresh()).Times(1);

  drawing->play(1);
}
