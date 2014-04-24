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
    }
};

//TEST_F(DisplayXilTest, ScreenInit) {
  //EXPECT_CALL(display, _initscr()).Times(1);

  //Drawing d(&board, &display);
//}
