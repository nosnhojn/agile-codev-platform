using namespace testing;

class CellLivesOrDiesTest : public testing::Test
{
  public:
    cell myCell;

    void makeLiveCell() {
      myCell.setState(true);
    }
};

TEST_F(CellLivesOrDiesTest, CellIsDead) {
  EXPECT_FALSE(myCell.getState());
}

TEST_F(CellLivesOrDiesTest, NoNeighboursStaysDead) {
  EXPECT_FALSE(myCell.isAlive(0));
}

TEST_F(CellLivesOrDiesTest, OneNeighbourStaysDead) {
  EXPECT_FALSE(myCell.isAlive(1));
}

TEST_F(CellLivesOrDiesTest, TwoNeighbourStaysDead) {
  EXPECT_FALSE(myCell.isAlive(2));
}

TEST_F(CellLivesOrDiesTest, ThreeNeighbourIsBorn) {
  EXPECT_TRUE(myCell.isAlive(3));
}

TEST_F(CellLivesOrDiesTest, FourNeighbourIsDead) {
  EXPECT_FALSE(myCell.isAlive(4));
}

TEST_F(CellLivesOrDiesTest, OneNeighbourDies) {
  makeLiveCell();
  EXPECT_FALSE(myCell.isAlive(1));
}

TEST_F(CellLivesOrDiesTest, TwoNeighbourStaysAlive) {
  makeLiveCell();
  EXPECT_TRUE(myCell.isAlive(2));
}

TEST_F(CellLivesOrDiesTest, ThreeNeighbourStaysAlive) {
  makeLiveCell();
  EXPECT_TRUE(myCell.isAlive(3));
}

TEST_F(CellLivesOrDiesTest, FourNeighbourStaysDies) {
  makeLiveCell();
  EXPECT_FALSE(myCell.isAlive(4));
}

TEST_F(CellLivesOrDiesTest, CopyConstructor) {
  myCell.setState(true);
  cell aCopy(myCell);
  EXPECT_EQ(aCopy.getState(), myCell.getState());
}

TEST_F(CellLivesOrDiesTest, CopyConstructorNewObject) {
  cell aCopy(myCell);
  myCell.setState(true);
  EXPECT_TRUE(aCopy.getState() != myCell.getState());
}
