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

      EXPECT_EQ(expectedPixelAt(x, y), exp);
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
      EXPECT_EQ(exp, expectedPixelAt(x, y));
    }
  }
}

TEST_F(DisplayLiveCellTest, addBlankRowToGrid) {
  initDisplay();
  loadEmptyGrid();

  EXPECT_EQ(pixelAt(0, 0), display->getBgColour());
  EXPECT_EQ(pixelAt(0, display->getWidth()-1), display->getBgColour());
}

TEST_F(DisplayLiveCellTest, addFullRowToGrid) {
  initDisplay();
  loadFullGrid();

  EXPECT_EQ(pixelAt(0, 0), expectedPixelAt(0, 0));
  EXPECT_EQ(pixelAt(0, display->getWidth()-1), expectedPixelAt(0, display->getWidth()-1));
}

TEST_F(DisplayLiveCellTest, cellWidthIs20Pixels) {
  initDisplay();
  loadAlternatingVerticalGrid();

  // empty cell 0,0
  EXPECT_EQ(pixelAt(0, 0),  display->getBgColour());
  EXPECT_EQ(pixelAt(0, 19), display->getBgColour());

  // full cell 0,1
  EXPECT_EQ(pixelAt(0, 20), expectedPixelAt(0, 0));
  EXPECT_EQ(pixelAt(0, 39), expectedPixelAt(0, 19));
}

TEST_F(DisplayLiveCellTest, cellHeightIs20Pixels) {
  initDisplay();
  loadAlternatingHorizontalGrid();

  // cell 0,0
  EXPECT_EQ(pixelAt(0, 0),  display->getBgColour());
  EXPECT_EQ(pixelAt(19, 0), display->getBgColour());

  // cell 1,0
  EXPECT_EQ(pixelAt(20, 0), expectedPixelAt(0, 0));
  EXPECT_EQ(pixelAt(39, 0), expectedPixelAt(19, 0));
}

TEST_F(DisplayLiveCellTest, refreshResetGrid) {
  initDisplay();
  loadFullGrid();
  loadEmptyGrid();

  EXPECT_EQ(pixelAt(0, 0), display->getBgColour());
  EXPECT_EQ(pixelAt(0, display->getWidth()-1), display->getBgColour());
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
