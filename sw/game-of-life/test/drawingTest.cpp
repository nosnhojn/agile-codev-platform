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
    DisplayMock display;

    ExpectationSet req;

    DrawingTest() : checkRow("^" + string(Board::COLUMN_SIZE, ' ')),
                    emptyRow("^" + string(Board::COLUMN_SIZE, ' '))
    {
      drawing = new Drawing(&board, &display);
    }

    ~DrawingTest()
    {
      if (drawing != 0) delete drawing;
    }

    void newLivingCell(int row, int column)
    {
      checkRow[column+1] = 'X';
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

  Drawing d(&board, &display);
}

TEST_F(DrawingTest, ScreenRefreshed) {
  EXPECT_CALL(display, _refresh()).Times(1);

  drawing->refreshDrawing();
}

TEST_F(DrawingTest, ScreenRefreshedRow0) {
  EXPECT_CALL(display, _addstr(MatchesRegex(emptyRow.c_str()))).Times(50);

  drawing->refreshDrawing();
}

TEST_F(DrawingTest, ScreenRefreshedRow0WithOneLivingCell) {
  newLivingCell(0,0);

  req = EXPECT_CALL(display, _addstr(MatchesRegex(checkRow.c_str()))).Times(1);
  EXPECT_CALL(display, _addstr(MatchesRegex(emptyRow.c_str()))).Times(49).After(req);

  drawing->refreshDrawing();
}

TEST_F(DrawingTest, ScreenRefreshedRow0WithAllLivingCells) {
  for (int c=0; c<Board::COLUMN_SIZE; c+=1) {
    newLivingCell(0,c);
  }

  req = EXPECT_CALL(display, _addstr(MatchesRegex(checkRow.c_str()))).Times(1);
  EXPECT_CALL(display, _addstr(MatchesRegex(emptyRow.c_str()))).Times(49).After(req);

  drawing->refreshDrawing();
}

TEST_F(DrawingTest, ScreenStartsUnInitialized) {
  EXPECT_FALSE(drawing->isInitialized());
}

TEST_F(DrawingTest, ScreenWaitForPromptAtPos) {
  req = EXPECT_CALL(display, _initscr()).Times(1);
  EXPECT_CALL(display, _move(50,0)).Times(1).After(req);

  Drawing d(&board, &display);
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
  drawing->initialCell(0,1);
  drawing->initialCell(0,2);

  drawing->play(1);

  EXPECT_TRUE(board.getState(1,1));
}

TEST_F(DrawingTest, ScreenCleared) {
  EXPECT_CALL(display, _clear()).Times(1);

  drawing->play(1);
}

TEST_F(DrawingTest, PlaySecondBoardRefresh) {
  drawing->initialCell(0,0);
  drawing->initialCell(0,1);
  drawing->initialCell(0,2);
  drawing->initialCell(0,3);
  drawing->initialCell(0,4);

  drawing->play(2);

  EXPECT_FALSE(board.getState(0,0));
  EXPECT_TRUE(board.getState(0,1));
  EXPECT_FALSE(board.getState(0,2));
  EXPECT_TRUE(board.getState(0,3));
  EXPECT_FALSE(board.getState(0,4));
  EXPECT_FALSE(board.getState(1,0));
  EXPECT_TRUE(board.getState(1,1));
  EXPECT_FALSE(board.getState(1,2));
  EXPECT_TRUE(board.getState(1,3));
  EXPECT_FALSE(board.getState(1,4));
}

TEST_F(DrawingTest, PlayDrawingRefresh) {
  EXPECT_CALL(display, _refresh()).Times(1);

  drawing->play(1);
}
