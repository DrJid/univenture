//
//  FundingViewController.h
//  Univenture
//
//  Created by Maijid Moujaled on 11/17/12.
//  Copyright (c) 2012 Maijid Moujaled. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "Venture.h"

@protocol FundingViewControllerDelegate;

@interface FundingViewController : UIViewController {
//    id <FundingViewControllerDelegate>delegate;
}

@property (nonatomic, strong) Venture *venture;
@property (weak, nonatomic) IBOutlet UILabel *workLabel;

@property(nonatomic, assign) id<FundingViewControllerDelegate>delegate;
@property (weak, nonatomic) IBOutlet UITextField *amountToFundTextField;
@property (weak, nonatomic) IBOutlet UILabel *remainingNeeded;

@end

@protocol FundingViewControllerDelegate <NSObject>
- (void)fundingViewControllerDelegateDidCancel:(FundingViewController *)controller;
- (void)fundingViewControllerDidSendFunds:(FundingViewController *)controller withAmount:(int)amount;
@end


