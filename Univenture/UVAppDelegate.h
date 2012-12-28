//
//  UVAppDelegate.h
//  Univenture
//
//  Created by Maijid Moujaled on 11/17/12.
//  Copyright (c) 2012 Maijid Moujaled. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UVViewController;
@class AllVenturesViewController;
@interface UVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UVViewController *viewController;
@property (nonatomic, strong) IBOutlet UINavigationController *navigationController;
@property (nonatomic, strong) AllVenturesViewController *allVenturesViewController;

@end
