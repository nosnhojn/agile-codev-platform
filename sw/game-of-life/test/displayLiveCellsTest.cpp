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
    IicCtrlMock iicCtrl;
    Xuint32 HdmiDisplayMemory [1080*3] [1920];

    DisplayLiveCellTest()
    {
      cfg.hdmiDisplayMemBaseAddr = (Xuint32)HdmiDisplayMemory;
      cfg.iicCtrl = &iicCtrl;

      display = new DisplayXil(&cfg);

      for (int i=0; i<1080; i++)
        for (int j=0; j<1920; j++)
          HdmiDisplayMemory [i] [j] = 0x44883311;

    }

    ~DisplayLiveCellTest()
    {
    }
};

//-------------------------------------------------------
// For a triangle, anything under the y = m * x + b line
// should be Fg colour and everything above should be Bg
// colour.
//
// For the full triangle... /\
//
// For the upslope...       /
//   y > H - ((H/(W/2)) * x)
//
// For the downslope...      \
//   y > (H/(W/2)) * x - 100
//
//-------------------------------------------------------
TEST_F(DisplayLiveCellTest, livingCellShapeIsATriangle) {
  Xuint32 exp;
  for (int x=0; x<50; x+=1) {
    for (int y=0; y<100; y+=1) {
      // upslope
      if (x < 25) {
        if (y > 100 - (4 * x)) exp = display->getFgColour();
        else                   exp = display->getBgColour();
      }

      // downslope
      else {
        if (y > (4 * x) - 100) exp = display->getFgColour();
        else                   exp = display->getBgColour();
      }
      EXPECT_EQ(exp, display->getLiveCellPixelWithCoords(x, 50, y, 100));
    }
  }
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

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getLiveCellPixelWithCoords(0, 108, 0, 1920));
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getLiveCellPixelWithCoords(107, 108, 0, 1920));
}

TEST_F(DisplayLiveCellTest, cellWidthIsGetWidthByNumColumns) {
  display->_initscr();
  display->_addstr(ALTERNATE_ROW_OF_10);
  display->_refresh();

  // cell 0
  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getBgColour());
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()/10-1], display->getBgColour());

  // cell 1
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()/10], display->getLiveCellPixelWithCoords(0, 108, 0, 1920));
  EXPECT_EQ(HdmiDisplayMemory[0][(2*display->getWidth()/10)-1], display->getLiveCellPixelWithCoords(107, 108, 0, 1920));
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
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2][0], display->getLiveCellPixelWithCoords(0, 108, 0, 910));
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()/2][display->getWidth()-1], display->getLiveCellPixelWithCoords(107, 108, 0, 910));

  // bottom of row 1
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()-1][0], display->getLiveCellPixelWithCoords(0, 108, 909, 910));
  EXPECT_EQ(HdmiDisplayMemory[display->getHeight()-1][display->getWidth()-1], display->getLiveCellPixelWithCoords(107, 108, 909, 910));
}

TEST_F(DisplayLiveCellTest, refreshResetGrid) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_refresh();

  display->_initscr();
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(HdmiDisplayMemory[0][0], display->getLiveCellPixelWithCoords(0, 108, 0, 1920));
  EXPECT_EQ(HdmiDisplayMemory[0][display->getWidth()-1], display->getLiveCellPixelWithCoords(107, 108, 0, 1920));
}

TEST_F(DisplayLiveCellTest, getCellXCoord) {
  EXPECT_EQ(10, display->getCellXCoord(394, 20));
}

TEST_F(DisplayLiveCellTest, getCellYCoord) {
  EXPECT_EQ(8, display->getCellYCoord(62, 20));
}

TEST_F(DisplayLiveCellTest, getCellWidth) {
  EXPECT_EQ(1920/13, display->getCellWidth(13));
}

TEST_F(DisplayLiveCellTest, getCellHeight) {
  EXPECT_EQ(1080/17, display->getCellHeight(17));
}

TEST_F(DisplayLiveCellTest, getFgColourIsBlack) {
  EXPECT_EQ(0x000000, display->getFgColour());
}

TEST_F(DisplayLiveCellTest, getBgColourIsWhite) {
  EXPECT_EQ(0xffffff, display->getBgColour());
}
