using namespace testing;

class BoardTest : public testing::Test
{
  public:
    board myBoard;
};

/////////////////////////////////////////
/////////////////////////////////////////

TEST_F(BoardTest, BoardInitializedWithOneDeadCell) {
  EXPECT_FALSE(myBoard.getState(0,0));
}

TEST_F(BoardTest, BoardInitializedWithAllDeadCells) {
  for (int column=0; column<board::COLUMN_SIZE; column+=1) {
    for (int row=0; row<board::ROW_SIZE; row+=1) {
      EXPECT_FALSE(myBoard.getState(row,column));
    }
  }
}

TEST_F(BoardTest, BoardWithLivingCell) {
  myBoard.setLivingCell(0,0);
  EXPECT_TRUE(myBoard.getState(0,0));
}

TEST_F(BoardTest, KillALivingCell) {
  myBoard.setLivingCell(0,0);
  myBoard.setDeadCell(0,0);
  EXPECT_FALSE(myBoard.getState(0,0));
}

TEST_F(BoardTest, BoardWithAnotherLivingCell) {
  myBoard.setLivingCell(1,1);
  EXPECT_FALSE(myBoard.getState(0,0));
}

TEST_F(BoardTest, CornerCellHasThreeDeadNeighbours) {
  EXPECT_EQ(0, myBoard.numLivingNeighbours(0,0));
}

TEST_F(BoardTest, CornerCellHasThreeLivingNeighbours) {
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(1,0);
  myBoard.setLivingCell(1,1);
  EXPECT_EQ(3, myBoard.numLivingNeighbours(0,0));
}

TEST_F(BoardTest, TopCellHasFiveLivingNeighbours) {
  myBoard.setLivingCell(0,0);
  myBoard.setLivingCell(0,2);
  myBoard.setLivingCell(1,0);
  myBoard.setLivingCell(1,1);
  myBoard.setLivingCell(1,2);
  EXPECT_EQ(5, myBoard.numLivingNeighbours(0,1));
}

TEST_F(BoardTest, BottomCellHasFiveLivingNeighbours) {
  myBoard.setLivingCell(board::ROW_SIZE-2,0);
  myBoard.setLivingCell(board::ROW_SIZE-2,1);
  myBoard.setLivingCell(board::ROW_SIZE-2,2);
  myBoard.setLivingCell(board::ROW_SIZE-1,0);
  myBoard.setLivingCell(board::ROW_SIZE-1,2);
  EXPECT_EQ(5, myBoard.numLivingNeighbours(board::ROW_SIZE-1,1));
}

TEST_F(BoardTest, MiddleCellHasEightLivingNeighbours) {
  myBoard.setLivingCell(1,2);
  myBoard.setLivingCell(1,3);
  myBoard.setLivingCell(1,4);
  myBoard.setLivingCell(2,2);
  myBoard.setLivingCell(2,4);
  myBoard.setLivingCell(3,2);
  myBoard.setLivingCell(3,3);
  myBoard.setLivingCell(3,4);
  EXPECT_EQ(8, myBoard.numLivingNeighbours(2,3));
}

TEST_F(BoardTest, MiddleCellHasNoLivingNeighbours) {
  EXPECT_EQ(0, myBoard.numLivingNeighbours(2,3));
}

TEST_F(BoardTest, RefreshedCellWithZeroNeighboursStaysDead) {
  myBoard.refreshCell(1,1);
  EXPECT_FALSE(myBoard.getState(1,1));
}

TEST_F(BoardTest, RefreshedCellWithThreeNeighboursIsBorn) {
  myBoard.setLivingCell(2,2);
  myBoard.setLivingCell(2,3);
  myBoard.setLivingCell(2,4);
  myBoard.refreshCell(1,1);
  EXPECT_FALSE(myBoard.getState(1,1));
}

TEST_F(BoardTest, RefreshedCellWithOneNeighboursDies) {
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(1,1);
  myBoard.refreshCell(1,1);
  EXPECT_FALSE(myBoard.getState(1,1));
}

TEST_F(BoardTest, RefreshedCellWithTwoNeighboursLives) {
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(1,1);
  myBoard.setLivingCell(2,1);
  myBoard.refreshCell(1,1);
  EXPECT_TRUE(myBoard.getState(1,1));
}

TEST_F(BoardTest, RefreshedCellWithFourNeighboursDies) {
  myBoard.setLivingCell(0,0);
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(0,2);
  myBoard.setLivingCell(1,1);
  myBoard.setLivingCell(1,0);
  myBoard.refreshCell(1,1);
  EXPECT_FALSE(myBoard.getState(1,1));
}

TEST_F(BoardTest, RefreshTestScenario0) {
  myBoard.setLivingCell(0,0);
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(0,3);
  myBoard.setLivingCell(1,0);
  myBoard.setLivingCell(1,1);
  myBoard.refreshBoard();
  EXPECT_TRUE(myBoard.getState(0,0));
  EXPECT_TRUE(myBoard.getState(0,1));
  EXPECT_TRUE(myBoard.getState(0,2));
  EXPECT_FALSE(myBoard.getState(0,3));
  EXPECT_TRUE(myBoard.getState(1,0));
  EXPECT_TRUE(myBoard.getState(1,1));
  EXPECT_TRUE(myBoard.getState(1,2));
}

TEST_F(BoardTest, RefreshTestScenario1) {
  myBoard.setLivingCell(0,0);
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(0,2);
  myBoard.setLivingCell(1,0);
  myBoard.refreshBoard();
  EXPECT_TRUE(myBoard.getState(0,0));
  EXPECT_TRUE(myBoard.getState(0,1));
  EXPECT_FALSE(myBoard.getState(0,2));
  EXPECT_TRUE(myBoard.getState(1,0));
  EXPECT_FALSE(myBoard.getState(1,1));
  EXPECT_FALSE(myBoard.getState(1,2));
}

TEST_F(BoardTest, RefreshTestScenario2) {
  myBoard.setLivingCell(1,0);
  myBoard.setLivingCell(1,1);
  myBoard.setLivingCell(1,2);
  myBoard.refreshBoard();
  EXPECT_TRUE(myBoard.getState(0,1));
  EXPECT_TRUE(myBoard.getState(1,1));
  EXPECT_TRUE(myBoard.getState(2,1));
}

TEST_F(BoardTest, ZeroIsLegalColumn) {
  EXPECT_TRUE(myBoard.legalColumn(0));
}

TEST_F(BoardTest, COLUMNSIZEMinusOneIsLegalColumn) {
  EXPECT_TRUE(myBoard.legalColumn(board::COLUMN_SIZE-1));
}

TEST_F(BoardTest, MinusOneIsIllegalColumn) {
  EXPECT_FALSE(myBoard.legalColumn(-1));
}

TEST_F(BoardTest, COLUMNSIZEIsIllegalColumn) {
  EXPECT_FALSE(myBoard.legalColumn(board::COLUMN_SIZE));
}

TEST_F(BoardTest, BoardIsClear) {
  EXPECT_TRUE(myBoard.isClear());
}

TEST_F(BoardTest, BoardIsNotClear) {
  myBoard.setLivingCell(1,2);
  EXPECT_FALSE(myBoard.isClear());
}

TEST_F(BoardTest, CopyConstructor) {
  myBoard.setLivingCell(1,2);
  board aCopy(myBoard);
  EXPECT_EQ(myBoard.getState(1,2), aCopy.getState(1,2));
}

TEST_F(BoardTest, CopyConstructorDeepCopy) {
  myBoard.setLivingCell(1,2);
  board aCopy(myBoard);
  myBoard.setDeadCell(1,2);
  EXPECT_TRUE(myBoard.getState(1,2) != aCopy.getState(1,2));
}
