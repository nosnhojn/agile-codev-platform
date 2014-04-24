#include "DisplayXilDriver.h"

DisplayXilDriver::DisplayXilDriver() :
  m_width(1920),
  m_height(1080),
  m_resolution(VIDEO_RESOLUTION_1080P)
{
}

void DisplayXilDriver::initHw()
{
}

Xuint32 DisplayXilDriver::getWidth()
{
  return m_width;
}

Xuint32 DisplayXilDriver::getHeight()
{
  return m_height;
}

int DisplayXilDriver::getResolution()
{
  return m_resolution;
}
