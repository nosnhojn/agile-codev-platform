#include "gtest/gtest.h"

#include "life.h"
#include "graphicsMock.h"

#include "life-cell-unittest.cpp"
#include "life-board-unittest.cpp"
#include "life-drawing-unittest.cpp"

/////////////////////////////////////////
/////////////////////////////////////////

int main(int argc, char **argv) {
  InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
