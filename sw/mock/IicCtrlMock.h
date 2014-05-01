#ifndef __IIC_CTRL_MOCK_CPP__
#define __IIC_CTRL_MOCK_CPP__

#include "IicCtrl.h"
#include "gmock/gmock.h"

using namespace std;

class IicCtrlMock : public IicCtrl
{
  public:
    MOCK_METHOD0(init, void());
};

#endif
