#include <string>

using namespace testing;
using namespace std;

class drawingTest : public testing::Test
{
  public:
    board myBoard;
    drawing * myDrawing;
    string checkRow;
    displayMock dMock;

    drawingTest() : checkRow(string(board::COLUMN_SIZE, ' ') + '\n')
    {
      myDrawing = new drawing(&myBoard, &dMock);
    }

    ~drawingTest()
    {
      dMock.ncursesReset();
    }

    void newLivingCell(int row, int column)
    {
      checkRow[column] = 'X';
      myBoard.setLivingCell(row, column);
    }
};

TEST_F(drawingTest, ScreenInit) {
  EXPECT_TRUE(dMock.initScrFlag());
}

TEST_F(drawingTest, ScreenRefreshed) {
  myDrawing->refreshDrawing();
  EXPECT_TRUE(dMock.refreshFlag());
}

TEST_F(drawingTest, ScreenRefreshedRow0) {
  myDrawing->refreshDrawing();
  EXPECT_EQ(checkRow, dMock.getScreenRowNumber(0));
}

TEST_F(drawingTest, ScreenRefreshedRow0WithOneLivingCell) {
  newLivingCell(0,0);
  myDrawing->refreshDrawing();
  EXPECT_EQ(checkRow, dMock.getScreenRowNumber(0));
}

TEST_F(drawingTest, ScreenRefreshedRow0WithAllLivingCells) {
  for (int c=0; c<board::COLUMN_SIZE; c+=1) {
    newLivingCell(0,c);
  }
  myDrawing->refreshDrawing();
  EXPECT_EQ(checkRow, dMock.getScreenRowNumber(0));
}

TEST_F(drawingTest, ScreenRefreshedRowN) {
  myDrawing->refreshDrawing();
  EXPECT_EQ(checkRow, dMock.getScreenRowNumber(board::ROW_SIZE-1));
}

TEST_F(drawingTest, ScreenStartsUnInitialized) {
  EXPECT_FALSE(myDrawing->isInitialized());
}

TEST_F(drawingTest, ScreenWaitForPromptAtPos) {
  EXPECT_TRUE(dMock.moveRowCoord() == board::ROW_SIZE);
}

TEST_F(drawingTest, ScreenWaitForPrompt) {
  myDrawing->play(1);
  EXPECT_TRUE(dMock.getchFlag());
}

TEST_F(drawingTest, InitializeBoard) {
  myDrawing->initialCell(0,1);
  myDrawing->initializeBoard();
  EXPECT_TRUE(myDrawing->isInitialized());
}

TEST_F(drawingTest, InitializeAllCells) {
  myDrawing->initialCell(0,0);
  myDrawing->initialCell(0,1);
  myDrawing->initialCell(0,2);

  myDrawing->initializeBoard();

  EXPECT_TRUE(myBoard.getState(0,0));
  EXPECT_TRUE(myBoard.getState(0,1));
  EXPECT_TRUE(myBoard.getState(0,2));
}

TEST_F(drawingTest, PlayFirstBoardRefresh) {
  myDrawing->initialCell(0,0);
  myDrawing->initialCell(0,1);
  myDrawing->initialCell(0,2);

  myDrawing->play(1);

  EXPECT_TRUE(myBoard.getState(1,1));
}

TEST_F(drawingTest, ScreenCleared) {
  myDrawing->play(1);
  EXPECT_TRUE(dMock.clearFlag());
}

TEST_F(drawingTest, PlaySecondBoardRefresh) {
  myDrawing->initialCell(0,0);
  myDrawing->initialCell(0,1);
  myDrawing->initialCell(0,2);
  myDrawing->initialCell(0,3);
  myDrawing->initialCell(0,4);

  myDrawing->play(2);

  EXPECT_FALSE(myBoard.getState(0,0));
  EXPECT_TRUE(myBoard.getState(0,1));
  EXPECT_FALSE(myBoard.getState(0,2));
  EXPECT_TRUE(myBoard.getState(0,3));
  EXPECT_FALSE(myBoard.getState(0,4));
  EXPECT_FALSE(myBoard.getState(1,0));
  EXPECT_TRUE(myBoard.getState(1,1));
  EXPECT_FALSE(myBoard.getState(1,2));
  EXPECT_TRUE(myBoard.getState(1,3));
  EXPECT_FALSE(myBoard.getState(1,4));
}

TEST_F(drawingTest, PlayDrawingRefresh) {
  myDrawing->play(1);
  EXPECT_TRUE(dMock.refreshFlag());
}
