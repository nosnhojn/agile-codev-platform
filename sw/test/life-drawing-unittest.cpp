#include <string>

using namespace testing;
using namespace std;

class LifeDrawingTest : public testing::Test
{
  public:
    board myBoard;
    drawing * myDrawing;
    string checkRow;

    LifeDrawingTest() : myDrawing(new drawing(&myBoard)), checkRow(string(board::COLUMN_SIZE, ' ') + '\n')
    {
    }

    ~LifeDrawingTest()
    {
      myDrawing->g.ncursesReset();
    }

    void newLivingCell(int row, int column)
    {
      checkRow[column] = 'X';
      myBoard.setLivingCell(row, column);
    }
};

TEST_F(LifeDrawingTest, ScreenInit) {
  EXPECT_TRUE(myDrawing->g.initScrFlag());
}

TEST_F(LifeDrawingTest, ScreenRefreshed) {
  myDrawing->refreshDrawing();
  EXPECT_TRUE(myDrawing->g.refreshFlag());
}

TEST_F(LifeDrawingTest, ScreenRefreshedRow0) {
  myDrawing->refreshDrawing();
  EXPECT_EQ(checkRow, myDrawing->g.getScreenRowNumber(0));
}

TEST_F(LifeDrawingTest, ScreenRefreshedRow0WithOneLivingCell) {
  newLivingCell(0,0);
  myDrawing->refreshDrawing();
  EXPECT_EQ(checkRow, myDrawing->g.getScreenRowNumber(0));
}

TEST_F(LifeDrawingTest, ScreenRefreshedRow0WithAllLivingCells) {
  for (int c=0; c<board::COLUMN_SIZE; c+=1) {
    newLivingCell(0,c);
  }
  myDrawing->refreshDrawing();
  EXPECT_EQ(checkRow, myDrawing->g.getScreenRowNumber(0));
}

TEST_F(LifeDrawingTest, ScreenRefreshedRowN) {
  myDrawing->refreshDrawing();
  EXPECT_EQ(checkRow, myDrawing->g.getScreenRowNumber(board::ROW_SIZE-1));
}

TEST_F(LifeDrawingTest, ScreenStartsUnInitialized) {
  EXPECT_FALSE(myDrawing->isInitialized());
}

TEST_F(LifeDrawingTest, ScreenWaitForPromptAtPos) {
  EXPECT_TRUE(myDrawing->g.moveRowCoord() == board::ROW_SIZE);
}

TEST_F(LifeDrawingTest, ScreenWaitForPrompt) {
  myDrawing->play(1);
  EXPECT_TRUE(myDrawing->g.getchFlag());
}

TEST_F(LifeDrawingTest, InitializeBoard) {
  myDrawing->initialCell(0,1);
  myDrawing->initializeBoard();
  EXPECT_TRUE(myDrawing->isInitialized());
}

TEST_F(LifeDrawingTest, InitializeAllCells) {
  myDrawing->initialCell(0,0);
  myDrawing->initialCell(0,1);
  myDrawing->initialCell(0,2);

  myDrawing->initializeBoard();

  EXPECT_TRUE(myBoard.getState(0,0));
  EXPECT_TRUE(myBoard.getState(0,1));
  EXPECT_TRUE(myBoard.getState(0,2));
}

TEST_F(LifeDrawingTest, PlayFirstBoardRefresh) {
  myDrawing->initialCell(0,0);
  myDrawing->initialCell(0,1);
  myDrawing->initialCell(0,2);

  myDrawing->play(1);

  EXPECT_TRUE(myBoard.getState(1,1));
}

TEST_F(LifeDrawingTest, ScreenCleared) {
  myDrawing->play(1);
  EXPECT_TRUE(myDrawing->g.clearFlag());
}

TEST_F(LifeDrawingTest, PlaySecondBoardRefresh) {
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

TEST_F(LifeDrawingTest, PlayDrawingRefresh) {
  myDrawing->play(1);
  EXPECT_TRUE(myDrawing->g.refreshFlag());
}
