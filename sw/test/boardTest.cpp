using namespace testing;

class boardTest : public testing::Test
{
  public:
    board myBoard;
};

/////////////////////////////////////////
/////////////////////////////////////////

TEST_F(boardTest, BoardInitializedWithOneDeadCell) {
  EXPECT_FALSE(myBoard.getState(0,0));
}

TEST_F(boardTest, BoardInitializedWithAllDeadCells) {
  for (int column=0; column<board::COLUMN_SIZE; column+=1) {
    for (int row=0; row<board::ROW_SIZE; row+=1) {
      EXPECT_FALSE(myBoard.getState(row,column));
    }
  }
}

TEST_F(boardTest, BoardWithLivingCell) {
  myBoard.setLivingCell(0,0);
  EXPECT_TRUE(myBoard.getState(0,0));
}

TEST_F(boardTest, KillALivingCell) {
  myBoard.setLivingCell(0,0);
  myBoard.setDeadCell(0,0);
  EXPECT_FALSE(myBoard.getState(0,0));
}

TEST_F(boardTest, BoardWithAnotherLivingCell) {
  myBoard.setLivingCell(1,1);
  EXPECT_FALSE(myBoard.getState(0,0));
}

TEST_F(boardTest, CornerCellHasThreeDeadNeighbours) {
  EXPECT_EQ(0, myBoard.numLivingNeighbours(0,0));
}

TEST_F(boardTest, CornerCellHasThreeLivingNeighbours) {
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(1,0);
  myBoard.setLivingCell(1,1);
  EXPECT_EQ(3, myBoard.numLivingNeighbours(0,0));
}

TEST_F(boardTest, TopCellHasFiveLivingNeighbours) {
  myBoard.setLivingCell(0,0);
  myBoard.setLivingCell(0,2);
  myBoard.setLivingCell(1,0);
  myBoard.setLivingCell(1,1);
  myBoard.setLivingCell(1,2);
  EXPECT_EQ(5, myBoard.numLivingNeighbours(0,1));
}

TEST_F(boardTest, BottomCellHasFiveLivingNeighbours) {
  myBoard.setLivingCell(board::ROW_SIZE-2,0);
  myBoard.setLivingCell(board::ROW_SIZE-2,1);
  myBoard.setLivingCell(board::ROW_SIZE-2,2);
  myBoard.setLivingCell(board::ROW_SIZE-1,0);
  myBoard.setLivingCell(board::ROW_SIZE-1,2);
  EXPECT_EQ(5, myBoard.numLivingNeighbours(board::ROW_SIZE-1,1));
}

TEST_F(boardTest, MiddleCellHasEightLivingNeighbours) {
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

TEST_F(boardTest, MiddleCellHasNoLivingNeighbours) {
  EXPECT_EQ(0, myBoard.numLivingNeighbours(2,3));
}

TEST_F(boardTest, RefreshedCellWithZeroNeighboursStaysDead) {
  myBoard.refreshCell(1,1);
  EXPECT_FALSE(myBoard.getState(1,1));
}

TEST_F(boardTest, RefreshedCellWithThreeNeighboursIsBorn) {
  myBoard.setLivingCell(2,2);
  myBoard.setLivingCell(2,3);
  myBoard.setLivingCell(2,4);
  myBoard.refreshCell(1,1);
  EXPECT_FALSE(myBoard.getState(1,1));
}

TEST_F(boardTest, RefreshedCellWithOneNeighboursDies) {
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(1,1);
  myBoard.refreshCell(1,1);
  EXPECT_FALSE(myBoard.getState(1,1));
}

TEST_F(boardTest, RefreshedCellWithTwoNeighboursLives) {
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(1,1);
  myBoard.setLivingCell(2,1);
  myBoard.refreshCell(1,1);
  EXPECT_TRUE(myBoard.getState(1,1));
}

TEST_F(boardTest, RefreshedCellWithFourNeighboursDies) {
  myBoard.setLivingCell(0,0);
  myBoard.setLivingCell(0,1);
  myBoard.setLivingCell(0,2);
  myBoard.setLivingCell(1,1);
  myBoard.setLivingCell(1,0);
  myBoard.refreshCell(1,1);
  EXPECT_FALSE(myBoard.getState(1,1));
}

TEST_F(boardTest, RefreshTestScenario0) {
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

TEST_F(boardTest, RefreshTestScenario1) {
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

TEST_F(boardTest, RefreshTestScenario2) {
  myBoard.setLivingCell(1,0);
  myBoard.setLivingCell(1,1);
  myBoard.setLivingCell(1,2);
  myBoard.refreshBoard();
  EXPECT_TRUE(myBoard.getState(0,1));
  EXPECT_TRUE(myBoard.getState(1,1));
  EXPECT_TRUE(myBoard.getState(2,1));
}

TEST_F(boardTest, ZeroIsLegalColumn) {
  EXPECT_TRUE(myBoard.legalColumn(0));
}

TEST_F(boardTest, COLUMNSIZEMinusOneIsLegalColumn) {
  EXPECT_TRUE(myBoard.legalColumn(board::COLUMN_SIZE-1));
}

TEST_F(boardTest, MinusOneIsIllegalColumn) {
  EXPECT_FALSE(myBoard.legalColumn(-1));
}

TEST_F(boardTest, COLUMNSIZEIsIllegalColumn) {
  EXPECT_FALSE(myBoard.legalColumn(board::COLUMN_SIZE));
}

TEST_F(boardTest, BoardIsClear) {
  EXPECT_TRUE(myBoard.isClear());
}

TEST_F(boardTest, BoardIsNotClear) {
  myBoard.setLivingCell(1,2);
  EXPECT_FALSE(myBoard.isClear());
}

TEST_F(boardTest, CopyConstructor) {
  myBoard.setLivingCell(1,2);
  board aCopy(myBoard);
  EXPECT_EQ(myBoard.getState(1,2), aCopy.getState(1,2));
}

TEST_F(boardTest, CopyConstructorDeepCopy) {
  myBoard.setLivingCell(1,2);
  board aCopy(myBoard);
  myBoard.setDeadCell(1,2);
  EXPECT_TRUE(myBoard.getState(1,2) != aCopy.getState(1,2));
}
