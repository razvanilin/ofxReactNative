#import "SquareAppViewController.h"
#include "ofxiOSExtras.h"
#include "ofAppiOSWindow.h"

@implementation SquareAppViewController

- (id) initWithFrame:(CGRect)frame app:(ofxiOSApp *)app {
  
  ofxiOSGetOFWindow()->setOrientation( OF_ORIENTATION_DEFAULT );   //-- default portait orientation.
  
  return self = [super initWithFrame:frame app:app];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
  return NO;
}

@end

