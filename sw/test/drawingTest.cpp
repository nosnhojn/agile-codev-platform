#include <string>

using namespace testing;
using namespace std;

class DrawingTest : public testing::Test
{
  public:
    Board board;
    Drawing * drawing;
    string checkRow;
    DisplayMock displayMock;

    DrawingTest() : checkRow(string(Board::COLUMN_SIZE, ' ') + '\n')
    {
      drawing = new Drawing(&board, &displayMock);
    }

    ~DrawingTest()
    {
      displayMock.ncursesReset();
    }

    void newLivingCell(int row, int column)
    {
      checkRow[column] = 'X';
      board.setLivingCell(row, column);
    }
};

TEST_F(DrawingTest, ScreenInit) {
  EXPECT_TRUE(displayMock.initScrFlag());
}

TEST_F(DrawingTest, ScreenRefreshed) {
  drawing->refreshDrawing();
  EXPECT_TRUE(displayMock.refreshFlag());
}

TEST_F(DrawingTest, ScreenRefreshedRow0) {
  drawing->refreshDrawing();
  EXPECT_EQ(checkRow, displayMock.getScreenRowNumber(0));
}

TEST_F(DrawingTest, ScreenRefreshedRow0WithOneLivingCell) {
  newLivingCell(0,0);
  drawing->refreshDrawing();
  EXPECT_EQ(checkRow, displayMock.getScreenRowNumber(0));
}

TEST_F(DrawingTest, ScreenRefreshedRow0WithAllLivingCells) {
  for (int c=0; c<Board::COLUMN_SIZE; c+=1) {
    newLivingCell(0,c);
  }
  drawing->refreshDrawing();
  EXPECT_EQ(checkRow, displayMock.getScreenRowNumber(0));
}

TEST_F(DrawingTest, ScreenRefreshedRowN) {
  drawing->refreshDrawing();
  EXPECT_EQ(checkRow, displayMock.getScreenRowNumber(Board::ROW_SIZE-1));
}

TEST_F(DrawingTest, ScreenStartsUnInitialized) {
  EXPECT_FALSE(drawing->isInitialized());
}

TEST_F(DrawingTest, ScreenWaitForPromptAtPos) {
  EXPECT_TRUE(displayMock.moveRowCoord() == Board::ROW_SIZE);
}

TEST_F(DrawingTest, ScreenWaitForPrompt) {
  drawing->play(1);
  EXPECT_TRUE(displayMock.getchFlag());
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
  drawing->play(1);
  EXPECT_TRUE(displayMock.clearFlag());
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
  drawing->play(1);
  EXPECT_TRUE(displayMock.refreshFlag());
}
