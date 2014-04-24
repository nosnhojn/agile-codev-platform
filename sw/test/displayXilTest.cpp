using namespace testing;

class DisplayXilTest : public testing::Test
{
  public:
    DisplayXilDriverMock driverMock;
    DisplayXil * display;

    DisplayXilTest()
    {
      display = new DisplayXil(&driverMock);
    }

    ~DisplayXilTest()
    {
      delete display;
    }
};

TEST_F(DisplayXilTest, HwInit) {
  EXPECT_CALL(driverMock, initHw()).Times(1);

  display->_initscr();
}
