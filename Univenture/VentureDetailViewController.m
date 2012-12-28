//
//  VentureDetailViewController.m
//  Univenture
//
//  Created by Maijid Moujaled on 11/17/12.
//  Copyright (c) 2012 Maijid Moujaled. All rights reserved.
//

#import "VentureDetailViewController.h"
#import "MBProgressHUD.h"
#import "FundingViewController.h"

@interface VentureDetailViewController ()

@end

@implementation VentureDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.theScrollView.delegate = self;
    self.theScrollView.scrollEnabled = YES;
    self.theScrollView.contentSize = CGSizeMake(320, 910);
    self.title = self.venture.name;
    
    
    UIImageView *mainImageView = (UIImageView *)[self.view viewWithTag:101];
    mainImageView.image = self.venture.ventureImage;
    self.theTextView.text = self.venture.shortDescription;


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTheScrollView:nil];
    [self setTheTextView:nil];
    [super viewDidUnload];
}
- (IBAction)watch:(id)sender {
    
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
	[self.navigationController.view addSubview:HUD];
    HUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"small_eye.png"]];
    HUD.mode = MBProgressHUDModeCustomView;
	HUD.delegate = self;
    NSString *HUDLabel = [NSString stringWithFormat:@"Now watching %@!", self.venture.name];
	HUD.labelText = HUDLabel;
	[HUD show:YES];
	[HUD hide:YES afterDelay:1];

}
- (IBAction)backThis:(id)sender {
    FundingViewController *fvc = [[FundingViewController alloc] initWithNibName:@"FundingViewController" bundle:nil];
    fvc.venture = self.venture;
    fvc.delegate = self;
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:fvc];
    navController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:navController animated:YES];
    
}

- (void)fundingViewControllerDelegateDidCancel:(FundingViewController *)controller {
    [self dismissModalViewControllerAnimated:YES];
    
}


- (void)fundingViewControllerDidSendFunds:(FundingViewController *)controller withAmount:(int)amount{
    [self dismissModalViewControllerAnimated:YES];
    
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
	[self.navigationController.view addSubview:HUD];
    HUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"dollarsmall.png"]];
    HUD.mode = MBProgressHUDModeCustomView;
	HUD.delegate = self;
    NSString *HUDLabel = [NSString stringWithFormat:@"You invested $%d!", amount];
	HUD.labelText = HUDLabel;
	[HUD show:YES];
	[HUD hide:YES afterDelay:3];
}
- (IBAction)help:(id)sender {

    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Help this project in other ways!" delegate:nil cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Share it", @"Intern it" , @"Mentor it" , @"Contact it", nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    [actionSheet showInView:self.view];
    
    
}
@end
