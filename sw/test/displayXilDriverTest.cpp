using namespace testing;

class DisplayXilDriverTest : public testing::Test
{
  public:
    DisplayXilDriver * driver;

    DisplayXilDriverTest()
    {
      driver = new DisplayXilDriver();
    }

    ~DisplayXilDriverTest()
    {
    }
};

TEST_F(DisplayXilDriverTest, getWidth) {
  EXPECT_EQ(driver->getWidth(), 1920);
}

TEST_F(DisplayXilDriverTest, getHeight) {
  EXPECT_EQ(driver->getHeight(), 1080);
}

TEST_F(DisplayXilDriverTest, getResolution) {
  EXPECT_EQ(driver->getResolution(), VIDEO_RESOLUTION_1080P);
}
