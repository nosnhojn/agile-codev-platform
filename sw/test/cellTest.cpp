using namespace testing;

class cellTest : public testing::Test
{
  public:
    cell myCell;

    void makeLiveCell() {
      myCell.setState(true);
    }
};

TEST_F(cellTest, CellIsDead) {
  EXPECT_FALSE(myCell.getState());
}

TEST_F(cellTest, NoNeighboursStaysDead) {
  EXPECT_FALSE(myCell.isAlive(0));
}

TEST_F(cellTest, OneNeighbourStaysDead) {
  EXPECT_FALSE(myCell.isAlive(1));
}

TEST_F(cellTest, TwoNeighbourStaysDead) {
  EXPECT_FALSE(myCell.isAlive(2));
}

TEST_F(cellTest, ThreeNeighbourIsBorn) {
  EXPECT_TRUE(myCell.isAlive(3));
}

TEST_F(cellTest, FourNeighbourIsDead) {
  EXPECT_FALSE(myCell.isAlive(4));
}

TEST_F(cellTest, OneNeighbourDies) {
  makeLiveCell();
  EXPECT_FALSE(myCell.isAlive(1));
}

TEST_F(cellTest, TwoNeighbourStaysAlive) {
  makeLiveCell();
  EXPECT_TRUE(myCell.isAlive(2));
}

TEST_F(cellTest, ThreeNeighbourStaysAlive) {
  makeLiveCell();
  EXPECT_TRUE(myCell.isAlive(3));
}

TEST_F(cellTest, FourNeighbourStaysDies) {
  makeLiveCell();
  EXPECT_FALSE(myCell.isAlive(4));
}

TEST_F(cellTest, CopyConstructor) {
  myCell.setState(true);
  cell aCopy(myCell);
  EXPECT_EQ(aCopy.getState(), myCell.getState());
}

TEST_F(cellTest, CopyConstructorNewObject) {
  cell aCopy(myCell);
  myCell.setState(true);
  EXPECT_TRUE(aCopy.getState() != myCell.getState());
}
