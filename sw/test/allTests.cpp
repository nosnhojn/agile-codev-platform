#include "gtest/gtest.h"

#include "life.h"
#include "DisplayMock.h"

#include "CellTest.cpp"
#include "BoardTest.cpp"
#include "DrawingTest.cpp"

/////////////////////////////////////////
/////////////////////////////////////////

int main(int argc, char **argv) {
  InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
