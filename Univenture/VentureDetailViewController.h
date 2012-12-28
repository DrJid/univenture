//
//  VentureDetailViewController.h
//  Univenture
//
//  Created by Maijid Moujaled on 11/17/12.
//  Copyright (c) 2012 Maijid Moujaled. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Venture.h"
#import "FundingViewController.h"

@interface VentureDetailViewController : UIViewController <FundingViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *theScrollView;
@property (nonatomic, strong) Venture *venture;
@property (weak, nonatomic) IBOutlet UITextView *theTextView;

@end
