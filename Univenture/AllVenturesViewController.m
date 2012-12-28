//
//  AllVenturesViewController.m
//  Univenture
//
//  Created by Maijid Moujaled on 11/17/12.
//  Copyright (c) 2012 Maijid Moujaled. All rights reserved.
//

#import "AllVenturesViewController.h"
#import "VentureDetailViewController.h"
#import "Venture.h"

@interface AllVenturesViewController ()

@end

@implementation AllVenturesViewController 

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Univenture";

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //Sample Univenture Data;
    
//   self.allUniventures = [[NSMutableArray alloc] initWithObjects:@"Noah's Venture", @"David's Venture", @"Kate's Venture", nil];
    self.allUniventures = [[NSMutableArray alloc] initWithCapacity:5];
    
    //Prepare Cell
    self.cellIdentifier = @"OtherCell";
    


//    Univenture (north campus)
//    Garden Flower Accessories (flower)
//    PestDetest (raccoon)
//    Virtual Vacation Ventures (sunset)
//    QuickCite (notebook)
    
    Venture *venture2 = [[Venture alloc] init];
    venture2.name = @"Flower Accessories";
    venture2.shortDescription = @"This is a short Description of Flower Accessories! It's so short that.. it reminds me of Red Bull";
    venture2.totalNumberBackers = 14;
    venture2.watchers = 16;
    venture2.amountFunded = 289;
    venture2.amountLookingFor = 40000;
    venture2.ventureImage = [UIImage imageNamed:@"flower.JPG"];
    [self.allUniventures addObject:venture2];
    
    Venture *venture3 = [[Venture alloc] init];
    venture3.name = @"Univenture";
    venture3.shortDescription = @"Univenture is a startup that lets entrepreneurial-minded students and alumni easily crowdsource investment from other members of their college community.";
    venture3.totalNumberBackers = 14;
    venture3.watchers = 2167;
    venture3.amountFunded = 99570;
    venture3.amountLookingFor = 250000;
    venture3.ventureImage = [UIImage imageNamed:@"univenturefacebook.jpg"];
    [self.allUniventures addObject:venture3];
    
    Venture *venture4 = [[Venture alloc] init];
    venture4.name = @"PestDetest";
    venture4.shortDescription = @"Tired of waking up every morning with your top bin open and all the trash scattered across your lawn? I'm sure you hate pest just as much as I do! Look no further. With PestDetest we summon the FBI and CIA to guard your house all day every day. Professional snipers patrol with nerf guns hunting for raccoons. Say no more to trash in the morning. No more to noises at night!. Say Yes to good, healthy, sleep!";
    venture4.totalNumberBackers = 14;
    venture4.watchers = 412;
    venture4.amountFunded = 12300;
    venture4.amountLookingFor = 15000;
    venture4.ventureImage = [UIImage imageNamed:@"raccoon.JPG"];
    [self.allUniventures addObject:venture4];
    
    
    Venture *venture5 = [[Venture alloc] init];
    venture5.name = @"QuickCite";
    venture5.shortDescription = @"QuickCite is a web application to automatically generate MLA, APA, or CMOS works cited pages from a list of ISBN numbers. QuickCite will allow high school student, college students, and academics to do in a few minutes what would normally take 2-3 hours to do by hand. QuickCite would generate revenue by having students pay a small fee, 75 cents, for every 10 sources compiled. QC needs to raise a small amount of seed money for development, hosting, and user testing";
    venture5.totalNumberBackers = 14;
    venture5.watchers = 147;
    venture5.amountFunded = 12800;
    venture5.amountLookingFor = 25000;
    venture5.ventureImage = [UIImage imageNamed:@"quick_cite_img.jpg"];
    [self.allUniventures addObject:venture5];
    
    /*
    QuickCite Description: QuickCite is a web application to automatically generate MLA, APA, or CMOS works cited pages from a list of ISBN numbers. QuickCite will allow high school student, college students, and academics to do in a few minutes what would normally take 2-3 hours to do by hand. QuickCite would generate revenue by having students pay a small fee, 75 cents, for every 10 sources compiled. QC needs to raise a small amount of seed money for development, hosting, and user testing.
     */
    
    
    Venture *venture6 = [[Venture alloc] init];
    venture6.name = @"Virtual Vacations";
    venture6.totalNumberBackers = 14;
    venture6.shortDescription = @"Tired of not being able to afford a vacation. Well look no more! With Virtual Vacations, you can go anywhere in the world! Ohhh yeahhh";
    venture6.watchers = 973;
    venture6.amountFunded = 37000;
    venture6.amountLookingFor = 50000;
    venture6.ventureImage = [UIImage imageNamed:@"sunset.jpg"];
    [self.allUniventures addObject:venture6];

    //Venture 1
    Venture *venture1 = [[Venture alloc] init];
    venture1.name = @"Grinnell Appdev";
    venture1.shortDescription = @"Creating a platform for musicians to share thier artwork";
    venture1.totalNumberBackers = 213;
    venture1.watchers = 514;
    venture1.amountFunded = 4700;
    venture1.amountLookingFor = 6000;
    venture1.ventureImage = [UIImage imageNamed:@"appdev.png"];
    [self.allUniventures addObject:venture1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.allUniventures.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 99;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView registerNib:[UINib nibWithNibName:@"OtherCell" bundle:nil] forCellReuseIdentifier:self.cellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
	if (cell == nil)
	{
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:self.cellIdentifier];
	}
    
    
    UILabel *ventureName = (UILabel *)[cell viewWithTag:1001];
    UILabel *amountFunded = (UILabel *)[cell viewWithTag:1002];
    UILabel *amountLookingFor = (UILabel *)[cell viewWithTag:1003];
    UILabel *watchers = (UILabel *)[cell viewWithTag:1004];
    UIProgressView *progressView = (UIProgressView *)[cell viewWithTag:1005];
    UIImageView *companyImage = (UIImageView *)[cell viewWithTag:1000];


    
    /*
    UILabel *ventureShortDescription = (UILabel *)[cell viewWithTag:103];
    UILabel *amountFunded = (UILabel *)[cell viewWithTag:104];
    UILabel *amountLookingFor = (UILabel *)[cell viewWithTag:105];
    UIProgressView *progressView = (UIProgressView *)[cell viewWithTag:106];
    UILabel *numberBackers = (UILabel *)[cell viewWithTag:107];
    UILabel *watchers = (UILabel *)[cell viewWithTag:108];
     */
    
//    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
//    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
//    NSString *formattedNumberString = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:423.234]];
//    NSLog(@"formattedNumberString: %@", formattedNumberString);
//

    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setPositiveFormat:@"$##,###"];
    NSString *formattedNumberString = [numberFormatter stringFromNumber:@250000];
    NSLog(@"formattedNumberString: %@", formattedNumberString);
    // Output for locale en_US: "formattedNumberString: formattedNumberString: 122,344.45"
    
    Venture *venture = [self.allUniventures objectAtIndex:indexPath.row];
    ventureName.text = venture.name;
    amountFunded.text =  [numberFormatter stringFromNumber:[NSNumber numberWithInt:venture.amountFunded]];// [NSString stringWithFormat:@"$%d", venture.amountFunded];
    amountLookingFor.text = [numberFormatter stringFromNumber:[NSNumber numberWithInt:venture.amountLookingFor]];// [NSString stringWithFormat:@"$%d", venture.amountLookingFor];
    watchers.text = [NSString stringWithFormat:@"%d", venture.watchers];
    progressView.progress = (float)venture.amountFunded/(float)venture.amountLookingFor;
    companyImage.image = venture.ventureImage;

    /*
    ventureName.text = venture.name;
    ventureShortDescription.text = venture.shortDescription;
    amountFunded.text = [NSString stringWithFormat:@"%d",venture.amountFunded];
    amountLookingFor.text = [NSString stringWithFormat:@"%d",venture.amountLookingFor];
    progressView.progress = (float)venture.amountFunded/(float)venture.amountLookingFor;
    
    numberBackers.text = [NSString stringWithFormat:@"%d",venture.totalNumberBackers];
    watchers.text = [NSString stringWithFormat:@"%d",venture.watchers];
    */


    
    //cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"list-item.png"] ];

    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
    
    // Configure the cell...
   // cell.textLabel.text = [self.allUniventures objectAtIndex:indexPath.row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    VentureDetailViewController *ventureDetailViewController = [[VentureDetailViewController alloc] initWithNibName:@"VentureDetailViewController" bundle:nil];
    Venture *venture = [self.allUniventures objectAtIndex:indexPath.row];
    ventureDetailViewController.venture = venture;
    [self.navigationController pushViewController:ventureDetailViewController animated:YES];
    
}

@end
