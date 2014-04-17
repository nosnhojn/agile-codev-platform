using namespace std;

#include "gtest/gtest.h"
#include <string>

#include "Cell.h"
#include "Board.h"
#include "Drawing.h"
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
