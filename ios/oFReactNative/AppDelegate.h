#import <UIKit/UIKit.h>
#import "ofxiOSAppDelegate.h"

@interface AppDelegate : ofxiOSAppDelegate

@property (nonatomic, strong) UIWindow *window;

@property (nonatomic, strong) UIViewController *rootViewController;

@property (nonatomic, retain) UINavigationController* navigationController;

- (void) startOFView;

@end
