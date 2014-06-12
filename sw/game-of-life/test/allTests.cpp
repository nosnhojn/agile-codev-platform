#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include <string>

using namespace testing;

/////////////////////////////////////////
/////////////////////////////////////////

int main(int argc, char **argv) {
  InitGoogleMock(&argc, argv);
  FLAGS_gmock_verbose = "error";
  return RUN_ALL_TESTS();
}
