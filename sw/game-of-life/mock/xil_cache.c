#include "xil_cache.h"
#include "xdriverMock.h"

void Xil_DCacheFlush() {
  getXdriverMock()->Xil_DCacheFlush();
}
