#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "DisplayXil.h"
#include "IicCtrlMock.h"
#include "xdriverMock.h"
#include "xvtcMock.h"
#include "testDefs.h"
#include "Board.h"

#define FULL_ROW        "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
#define EMPTY_ROW       "                                                                                                "
#define ALTERNATING_ROW " X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X X"

class DisplayXilTest : public testing::Test
{
  public:
    DisplayXilCfg cfg;
    DisplayXil * display;
    Xuint8 * bungle;
    IicCtrlMock iicCtrl;
    Xuint8 HdmiDisplayByteMemory [(1080*1920*3) << 2];
    xdriverMock * xdMock;
    XvtcMock * xvMock;
    XAxiVdma_Config defaultConfig;
    XVtc_Config vtcDefaultConfig;

    int vdmaConfigSpace [256];
            
    
    DisplayXilTest();

    ~DisplayXilTest();

    XAxiVdma          * vdma();
    XAxiVdma_DmaSetup * vdmaCfg();
    XVtc_Polarity * xvtcPolarity();
    XVtc_Signal * xvtcSignal();
    XVtc_SourceSelect * xvtcSourceSelect();

    int width();
    int height();

    Xuint32 pixelAt(int row, int column);
    bool    expectedPixelAt(int row, int column);

    int initDisplay();
    void loadFullGrid();
    void loadEmptyGrid();
    void loadAlternatingVerticalGrid();
    void loadAlternatingHorizontalGrid();

    void EXPECT_BgPixelAt(int x, int y);
    void EXPECT_LivePixelAt(int x, int y);
};
