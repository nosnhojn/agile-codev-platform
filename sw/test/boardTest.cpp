using namespace testing;

class BoardTest : public testing::Test
{
  public:
    Board board;
};

/////////////////////////////////////////
/////////////////////////////////////////

TEST_F(BoardTest, BoardInitializedWithOneDeadCell) {
  EXPECT_FALSE(board.getState(0,0));
}

TEST_F(BoardTest, BoardInitializedWithAllDeadCells) {
  for (int column=0; column<Board::COLUMN_SIZE; column+=1) {
    for (int row=0; row<Board::ROW_SIZE; row+=1) {
      EXPECT_FALSE(board.getState(row,column));
    }
  }
}

TEST_F(BoardTest, BoardWithLivingCell) {
  board.setLivingCell(0,0);
  EXPECT_TRUE(board.getState(0,0));
}

TEST_F(BoardTest, KillALivingCell) {
  board.setLivingCell(0,0);
  board.setDeadCell(0,0);
  EXPECT_FALSE(board.getState(0,0));
}

TEST_F(BoardTest, BoardWithAnotherLivingCell) {
  board.setLivingCell(1,1);
  EXPECT_FALSE(board.getState(0,0));
}

TEST_F(BoardTest, CornerCellHasThreeDeadNeighbours) {
  EXPECT_EQ(0, board.numLivingNeighbours(0,0));
}

TEST_F(BoardTest, CornerCellHasThreeLivingNeighbours) {
  board.setLivingCell(0,1);
  board.setLivingCell(1,0);
  board.setLivingCell(1,1);
  EXPECT_EQ(3, board.numLivingNeighbours(0,0));
}

TEST_F(BoardTest, TopCellHasFiveLivingNeighbours) {
  board.setLivingCell(0,0);
  board.setLivingCell(0,2);
  board.setLivingCell(1,0);
  board.setLivingCell(1,1);
  board.setLivingCell(1,2);
  EXPECT_EQ(5, board.numLivingNeighbours(0,1));
}

TEST_F(BoardTest, BottomCellHasFiveLivingNeighbours) {
  board.setLivingCell(Board::ROW_SIZE-2,0);
  board.setLivingCell(Board::ROW_SIZE-2,1);
  board.setLivingCell(Board::ROW_SIZE-2,2);
  board.setLivingCell(Board::ROW_SIZE-1,0);
  board.setLivingCell(Board::ROW_SIZE-1,2);
  EXPECT_EQ(5, board.numLivingNeighbours(Board::ROW_SIZE-1,1));
}

TEST_F(BoardTest, MiddleCellHasEightLivingNeighbours) {
  board.setLivingCell(1,2);
  board.setLivingCell(1,3);
  board.setLivingCell(1,4);
  board.setLivingCell(2,2);
  board.setLivingCell(2,4);
  board.setLivingCell(3,2);
  board.setLivingCell(3,3);
  board.setLivingCell(3,4);
  EXPECT_EQ(8, board.numLivingNeighbours(2,3));
}

TEST_F(BoardTest, MiddleCellHasNoLivingNeighbours) {
  EXPECT_EQ(0, board.numLivingNeighbours(2,3));
}

TEST_F(BoardTest, RefreshedCellWithZeroNeighboursStaysDead) {
  board.refreshCell(1,1);
  EXPECT_FALSE(board.getState(1,1));
}

TEST_F(BoardTest, RefreshedCellWithThreeNeighboursIsBorn) {
  board.setLivingCell(2,2);
  board.setLivingCell(2,3);
  board.setLivingCell(2,4);
  board.refreshCell(1,1);
  EXPECT_FALSE(board.getState(1,1));
}

TEST_F(BoardTest, RefreshedCellWithOneNeighboursDies) {
  board.setLivingCell(0,1);
  board.setLivingCell(1,1);
  board.refreshCell(1,1);
  EXPECT_FALSE(board.getState(1,1));
}

TEST_F(BoardTest, RefreshedCellWithTwoNeighboursLives) {
  board.setLivingCell(0,1);
  board.setLivingCell(1,1);
  board.setLivingCell(2,1);
  board.refreshCell(1,1);
  EXPECT_TRUE(board.getState(1,1));
}

TEST_F(BoardTest, RefreshedCellWithFourNeighboursDies) {
  board.setLivingCell(0,0);
  board.setLivingCell(0,1);
  board.setLivingCell(0,2);
  board.setLivingCell(1,1);
  board.setLivingCell(1,0);
  board.refreshCell(1,1);
  EXPECT_FALSE(board.getState(1,1));
}

TEST_F(BoardTest, RefreshTestScenario0) {
  board.setLivingCell(0,0);
  board.setLivingCell(0,1);
  board.setLivingCell(0,3);
  board.setLivingCell(1,0);
  board.setLivingCell(1,1);
  board.refreshBoard();
  EXPECT_TRUE(board.getState(0,0));
  EXPECT_TRUE(board.getState(0,1));
  EXPECT_TRUE(board.getState(0,2));
  EXPECT_FALSE(board.getState(0,3));
  EXPECT_TRUE(board.getState(1,0));
  EXPECT_TRUE(board.getState(1,1));
  EXPECT_TRUE(board.getState(1,2));
}

TEST_F(BoardTest, RefreshTestScenario1) {
  board.setLivingCell(0,0);
  board.setLivingCell(0,1);
  board.setLivingCell(0,2);
  board.setLivingCell(1,0);
  board.refreshBoard();
  EXPECT_TRUE(board.getState(0,0));
  EXPECT_TRUE(board.getState(0,1));
  EXPECT_FALSE(board.getState(0,2));
  EXPECT_TRUE(board.getState(1,0));
  EXPECT_FALSE(board.getState(1,1));
  EXPECT_FALSE(board.getState(1,2));
}

TEST_F(BoardTest, RefreshTestScenario2) {
  board.setLivingCell(1,0);
  board.setLivingCell(1,1);
  board.setLivingCell(1,2);
  board.refreshBoard();
  EXPECT_TRUE(board.getState(0,1));
  EXPECT_TRUE(board.getState(1,1));
  EXPECT_TRUE(board.getState(2,1));
}

TEST_F(BoardTest, ZeroIsLegalColumn) {
  EXPECT_TRUE(board.legalColumn(0));
}

TEST_F(BoardTest, COLUMNSIZEMinusOneIsLegalColumn) {
  EXPECT_TRUE(board.legalColumn(Board::COLUMN_SIZE-1));
}

TEST_F(BoardTest, MinusOneIsIllegalColumn) {
  EXPECT_FALSE(board.legalColumn(-1));
}

TEST_F(BoardTest, COLUMNSIZEIsIllegalColumn) {
  EXPECT_FALSE(board.legalColumn(Board::COLUMN_SIZE));
}

TEST_F(BoardTest, BoardIsClear) {
  EXPECT_TRUE(board.isClear());
}

TEST_F(BoardTest, BoardIsNotClear) {
  board.setLivingCell(1,2);
  EXPECT_FALSE(board.isClear());
}

TEST_F(BoardTest, CopyConstructor) {
  board.setLivingCell(1,2);
  Board aCopy(board);
  EXPECT_EQ(board.getState(1,2), aCopy.getState(1,2));
}

TEST_F(BoardTest, CopyConstructorDeepCopy) {
  board.setLivingCell(1,2);
  Board aCopy(board);
  board.setDeadCell(1,2);
  EXPECT_TRUE(board.getState(1,2) != aCopy.getState(1,2));
}
