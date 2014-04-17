#include "gtest/gtest.h"

#include "life.h"
#include "graphicsMock.h"

#include "cellTest.cpp"
#include "boardTest.cpp"
#include "drawingTest.cpp"

/////////////////////////////////////////
/////////////////////////////////////////

int main(int argc, char **argv) {
  InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
