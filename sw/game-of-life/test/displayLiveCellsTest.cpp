#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "DisplayXil.h"
#include "IicCtrlMock.h"
#include "xdriverMock.h"
#include "xvtcMock.h"
#include "testDefs.h"

#define BLANK_ROW_OF_10     "          "
#define FULL_ROW_OF_10      "XXXXXXXXXX"
#define ALTERNATE_ROW_OF_10 " X X X X X"


using namespace testing;


class DisplayLiveCellTest : public testing::Test
{
  public:
    DisplayXilCfg cfg;
    DisplayXil * display;
    Xuint8 * bungle;
    IicCtrlMock iicCtrl;
    Xuint32 HdmiDisplayMemory [1080*3] [1920];

    DisplayLiveCellTest()
    {
      cfg.hdmiDisplayMemBaseAddr = (Xuint32)HdmiDisplayMemory;

      display = new DisplayXil(&cfg);

      for (int i=0; i<1080; i++)
        for (int j=0; j<1920; j++)
          HdmiDisplayMemory [i] [j] = 0x44883311;

    }

    ~DisplayLiveCellTest()
    {
    }
};

TEST_F(DisplayLiveCellTest, getFgColourIsBlack) {
  EXPECT_EQ(0x000000, display->getFgColour());
}

TEST_F(DisplayLiveCellTest, getBgColourIsWhite) {
  EXPECT_EQ(0xffffff, display->getBgColour());
}

TEST_F(DisplayLiveCellTest, getCellPixelAlwaysReturnsFgColourForRectangle) {
  EXPECT_EQ(display->getFgColour(), display->getLiveCellPixelWithCoords(22,50000));
}

TEST_F(DisplayLiveCellTest, addBlankRowToGrid) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getBgColour());
}

TEST_F(DisplayLiveCellTest, addFullRowToGrid) {
  display->_initscr();
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getFgColour());
}

TEST_F(DisplayLiveCellTest, cellWidthIsGetWidthByNumColumns) {
  display->_initscr();
  display->_addstr(ALTERNATE_ROW_OF_10);
  display->_refresh();

  // cell 0
  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()/10-1], display->getBgColour());

  // cell 1
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()/10], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][(2*display->getWidth()/10)-1], display->getFgColour());
}

TEST_F(DisplayLiveCellTest, cellHeightIsGetHeightByNumRows) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  // top of row 0
  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getBgColour());

  // bottom of row 0
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2-1][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2-1][display->getWidth()-1], display->getBgColour());

  // top of row 1
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2][0], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2][display->getWidth()-1], display->getFgColour());

  // bottom of row 1
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()-1][0], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()-1][display->getWidth()-1], display->getFgColour());
}

TEST_F(DisplayLiveCellTest, refreshResetGrid) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_refresh();

  display->_initscr();
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getFgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getFgColour());
}

TEST_F(DisplayLiveCellTest, getCellXCoord) {
  EXPECT_EQ(10, display->getCellXCoord(394, 20));
}

TEST_F(DisplayLiveCellTest, getCellYCoord) {
  EXPECT_EQ(8, display->getCellYCoord(62, 20));
}
