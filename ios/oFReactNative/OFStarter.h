//
//  OFStarter.h
//  SurgTracMobile
//
//  Created by Razvan Ilin on 27/06/2017.
//  Copyright © 2017 Razvan Ilin . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import "SquareApp.h"
#import "SquareAppViewController.h"

@interface OFStarter : NSObject <RCTBridgeModule>
{
  SquareApp* squareApp;
}
@property (nonatomic, strong) SquareAppViewController *squareInstance;
@end
