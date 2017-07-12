//
//  OFStarter.m
//  SurgTracMobile
//
//  Created by Razvan Ilin on 27/06/2017.
//  Copyright © 2017 Razvan Ilin. All rights reserved.
//

#import "OFStarter.h"
#import "AppDelegate.h"

@implementation OFStarter

// The React Native bridge needs to know our module
RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}


- (NSDictionary *)constantsToExport {
  return @{@"greeting": @"Welcome to native"};
}

RCT_EXPORT_METHOD(runOFTest:(int)number:(RCTResponseSenderBlock)callback) {
  
  AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  [delegate startOFView];
  callback(@[[NSNull null], [NSNumber numberWithInt:(1)]]);
}

@end
