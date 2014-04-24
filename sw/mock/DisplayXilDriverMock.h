#ifndef __DISPLAY_XIL_DRIVER_MOCK_CPP__
#define __DISPLAY_XIL_DRIVER_MOCK_CPP__

#include "DisplayXilDriver.h"
#include "gmock/gmock.h"

using namespace std;

class DisplayXilDriverMock : public DisplayXilDriver
{
  public:
    MOCK_METHOD0(initHw, void());
};

#endif
