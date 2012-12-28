//
//  AllVenturesViewController.h
//  Univenture
//
//  Created by Maijid Moujaled on 11/17/12.
//  Copyright (c) 2012 Maijid Moujaled. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllVenturesViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *allUniventures;

//For Custom Cell
@property (nonatomic, strong) NSString *cellIdentifier;


@end
