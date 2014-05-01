#ifndef __IIC_CTRL_CPP__
#define __IIC_CTRL_CPP__

using namespace std;

class IicCtrl
{
  public:
    IicCtrl();

    virtual void init()=0;
};

#endif
