//
//  FundingViewController.m
//  Univenture
//
//  Created by Maijid Moujaled on 11/17/12.
//  Copyright (c) 2012 Maijid Moujaled. All rights reserved.
//

#import "FundingViewController.h"

@interface FundingViewController ()

@end

@implementation FundingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


/*
- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    textField.borderStyle = UITextBorderStyleLine;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    label.text = @"mg";
    label.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.0];
    textField.rightViewMode = UITextFieldViewModeAlways;
    textField.rightView = label;
    [self.view addSubview:textField];
    [label release];
    [textField release];
}
 */

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.workLabel.text = self.venture.name;
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancel)];
    [[self navigationItem] setLeftBarButtonItem:cancelButton];
    self.title = @"Invest";
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"univenture-red-fin.psd"]];

    
//    self.amountToFundTextField.borderStyle = UITextBorderStyleLine;
   // UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
   // label.text = @"$";
  //  self.amountToFundTextField.leftViewMode = UITextFieldViewModeAlways;
 //   self.amountToFundTextField.leftView = label;

    int amountNeeded = self.venture.amountLookingFor - self.venture.amountFunded;
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setPositiveFormat:@"$##,###"];
    NSString *formattedNumberString = [numberFormatter stringFromNumber:@250000];
//    NSLog(@"formattedNumberString: %@", formattedNumberString);
    
    NSString *remFigure = [numberFormatter stringFromNumber:[NSNumber numberWithInt:amountNeeded]];
    self.remainingNeeded.text = [NSString stringWithFormat:@"Looking to raise %@ more!", remFigure];
    [self.amountToFundTextField becomeFirstResponder];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {

    [self setAmountToFundTextField:nil];
    [self setRemainingNeeded:nil];
    [super viewDidUnload];
}

//- (void)settingsDelegateDidFinish:(SettingsViewController *)controller {
//    [self dismissModalViewControllerAnimated:YES];
//}



- (void)cancel {
    [self.delegate fundingViewControllerDelegateDidCancel:self];
    [self dismissModalViewControllerAnimated:YES];
}


- (IBAction)send:(id)sender {
    int amount = [self.amountToFundTextField.text intValue];
    [self.delegate fundingViewControllerDidSendFunds:self withAmount:amount];

}


@end
