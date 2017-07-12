#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import "SquareAppViewController.h"
#import "SquareApp.h"
#import "MyAppViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [super applicationDidFinishLaunching:application];
  
  NSURL *jsCodeLocation;
  
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"oFReactNative"
                                               initialProperties:nil
                                                   launchOptions:launchOptions];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
  
  UIViewController *rootViewController = [[UIViewController alloc] init];
  rootViewController.view = rootView;

  
  self.navigationController = [[UINavigationController alloc] initWithRootViewController:	rootViewController];
  [self.window setRootViewController:self.navigationController];

  //--- style the UINavigationController
  self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
  self.navigationController.navigationBar.topItem.title = @"Home";
  
  return YES;
}

-(void) startOFView {
  
  [self.navigationController pushViewController:[[MyAppViewController alloc] init] animated:true];
  self.navigationController.navigationBar.topItem.title = @"OF";
}

@end
