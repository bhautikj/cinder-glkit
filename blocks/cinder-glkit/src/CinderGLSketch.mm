#include "CinderGLSketch.h"

#include "cinder/Utilities.h"
#include "cinder/app/App.h"

namespace cinder {

void CinderGLSketch::privateSetup__()
{
    mTimeline->stepTo(getElapsedSeconds());
    setup();
}

void CinderGLSketch::privateUpdate__()
{
    mTimeline->stepTo(getElapsedSeconds());
    update();
    mFrameCount++;
}

std::string CinderGLSketch::getAppPath()
{
  return [[[NSBundle mainBundle] bundlePath] UTF8String];
}

} // namespace cinder
