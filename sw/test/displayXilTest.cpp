using namespace testing;

class DisplayXilTest : public testing::Test
{
  public:
    DisplayXil display;

    DisplayXilTest()
    {
    }

    ~DisplayXilTest()
    {
    }
};

TEST_F(DisplayXilTest, ScreenInit) {
  //EXPECT_CALL(display, _initscr()).Times(1);

  //Drawing d(&board, &display);
}
