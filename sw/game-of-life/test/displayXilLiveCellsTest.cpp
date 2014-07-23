#include "displayXilTest.h"

using namespace testing;

#define BLANK_ROW_OF_10     "          "
#define FULL_ROW_OF_10      "XXXXXXXXXX"
#define ALTERNATE_ROW_OF_10 " X X X X X"

class DisplayLiveCellTest : public DisplayXilTest
{
  public :
    DisplayLiveCellTest() : DisplayXilTest() {}
};

TEST_F(DisplayLiveCellTest, livingCellShapeIsASquare) {
  Xuint32 exp;
  for (int x=0; x<20; x+=1) {
    for (int y=0; y<20; y+=1) {
      if (x >= 5 &&       // left margin
          x <= 15 &&      // right margin
          y >= 5 &&       // top margin
          y <= 15)        // bottom margin
        exp = display->getFgColour();
      else
        exp = display->getBgColour();

      EXPECT_EQ(exp, display->getLiveCellPixelWithCoords(x, 20, y, 20));
    }
  }
}
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
//   y > (H/(W/2)) * x - H
//
//-------------------------------------------------------

TEST_F(DisplayLiveCellTest, DISABLED_livingCellShapeIsATriangle) {
  Xuint32 exp;
  for (int x=0; x<20; x+=1) {
    for (int y=0; y<20; y+=1) {
      // upslope
      if (x < 10) {
        if (y > 20 - (2 * x)) exp = display->getFgColour();
        else                  exp = display->getBgColour();
      }

      // downslope
      else {
        if (y > (2 * x) - 20) exp = display->getFgColour();
        else                  exp = display->getBgColour();
      }
      EXPECT_EQ(exp, display->getLiveCellPixelWithCoords(x, 20, y, 20));
    }
  }
}

TEST_F(DisplayLiveCellTest, addBlankRowToGrid) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(pixelAt(0, 0), display->getBgColour());
  EXPECT_EQ(pixelAt(0, display->getWidth()-1), display->getBgColour());
}

TEST_F(DisplayLiveCellTest, addFullRowToGrid) {
  display->_initscr();
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(pixelAt(0, 0), display->getLiveCellPixelWithCoords(0, 192, 0, 1080));
  EXPECT_EQ(pixelAt(0, display->getWidth()-1), display->getLiveCellPixelWithCoords(0, 192, 1079, 1080));
}

TEST_F(DisplayLiveCellTest, cellWidthIsGetWidthByNumColumns) {
  display->_initscr();
  display->_addstr(ALTERNATE_ROW_OF_10);
  display->_refresh();

  // cell 0
  EXPECT_EQ(pixelAt(0, 0), display->getBgColour());
  EXPECT_EQ(pixelAt(0, display->getWidth()/10-1), display->getBgColour());

  // cell 1
  EXPECT_EQ(pixelAt(0, display->getWidth()/10), display->getLiveCellPixelWithCoords(0, 192, 0, 1080));
  EXPECT_EQ(pixelAt(0, (2*display->getWidth()/10)-1), display->getLiveCellPixelWithCoords(0, 192, 1079, 1080));
}

TEST_F(DisplayLiveCellTest, cellHeightIsGetHeightByNumRows) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  // top of row 0
  EXPECT_EQ(pixelAt(0, 0), display->getBgColour());
  EXPECT_EQ(pixelAt(0, display->getWidth()-1), display->getBgColour());

  // bottom of row 0
  EXPECT_EQ(pixelAt(display->getHeight()/2-1, 0), display->getBgColour());
  EXPECT_EQ(pixelAt(display->getHeight()/2-1, display->getWidth()-1), display->getBgColour());

  // top of row 1
  EXPECT_EQ(pixelAt(display->getHeight()/2, 0), display->getLiveCellPixelWithCoords(0, 192, 0, 540));
  EXPECT_EQ(pixelAt(display->getHeight()/2, display->getWidth()-1), display->getLiveCellPixelWithCoords(0, 192, 539, 540));

  // bottom of row 1
  EXPECT_EQ(pixelAt(display->getHeight()-1, 0), display->getLiveCellPixelWithCoords(191, 192, 0, 540));
  EXPECT_EQ(pixelAt(display->getHeight()-1, display->getWidth()-1), display->getLiveCellPixelWithCoords(191, 192, 539, 540));
}

TEST_F(DisplayLiveCellTest, refreshResetGrid) {
  display->_initscr();
  display->_addstr(BLANK_ROW_OF_10);
  display->_refresh();
 
  display->_initscr();
  display->_addstr(FULL_ROW_OF_10);
  display->_refresh();

  EXPECT_EQ(pixelAt(0, 0),                     display->getLiveCellPixelWithCoords(0, 192, 0, 1080));
  EXPECT_EQ(pixelAt(0, display->getWidth()-1), display->getLiveCellPixelWithCoords(0, 192, 1079, 1080));
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
