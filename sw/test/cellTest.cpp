using namespace testing;

class CellTest : public testing::Test
{
  public:
    Cell cell;

    void makeLiveCell() {
      cell.setState(true);
    }
};

TEST_F(CellTest, CellIsDead) {
  EXPECT_FALSE(cell.getState());
}

TEST_F(CellTest, NoNeighboursStaysDead) {
  EXPECT_FALSE(cell.isAlive(0));
}

TEST_F(CellTest, OneNeighbourStaysDead) {
  EXPECT_FALSE(cell.isAlive(1));
}

TEST_F(CellTest, TwoNeighbourStaysDead) {
  EXPECT_FALSE(cell.isAlive(2));
}

TEST_F(CellTest, ThreeNeighbourIsBorn) {
  EXPECT_TRUE(cell.isAlive(3));
}

TEST_F(CellTest, FourNeighbourIsDead) {
  EXPECT_FALSE(cell.isAlive(4));
}

TEST_F(CellTest, OneNeighbourDies) {
  makeLiveCell();
  EXPECT_FALSE(cell.isAlive(1));
}

TEST_F(CellTest, TwoNeighbourStaysAlive) {
  makeLiveCell();
  EXPECT_TRUE(cell.isAlive(2));
}

TEST_F(CellTest, ThreeNeighbourStaysAlive) {
  makeLiveCell();
  EXPECT_TRUE(cell.isAlive(3));
}

TEST_F(CellTest, FourNeighbourStaysDies) {
  makeLiveCell();
  EXPECT_FALSE(cell.isAlive(4));
}

TEST_F(CellTest, CopyConstructor) {
  cell.setState(true);
  Cell aCopy(cell);
  EXPECT_EQ(aCopy.getState(), cell.getState());
}

TEST_F(CellTest, CopyConstructorNewObject) {
  Cell aCopy(cell);
  cell.setState(true);
  EXPECT_TRUE(aCopy.getState() != cell.getState());
}
