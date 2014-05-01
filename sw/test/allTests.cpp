using namespace std;

#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include <string>

#include "Cell.h"
#include "Board.h"
#include "Drawing.h"
#include "DisplayMock.h"
#include "DisplayXil.h"
#include "IicCtrlMock.h"

#include "cellTest.cpp"
#include "boardTest.cpp"
#include "drawingTest.cpp"
#include "displayXilTest.cpp"

/////////////////////////////////////////
/////////////////////////////////////////

int main(int argc, char **argv) {
  InitGoogleMock(&argc, argv);
  FLAGS_gmock_verbose = "error";
  return RUN_ALL_TESTS();
}
