//
//  Venture.h
//  Univenture
//
//  Created by Maijid Moujaled on 11/17/12.
//  Copyright (c) 2012 Maijid Moujaled. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Venture : NSObject

@property (nonatomic, strong) NSString *name;
@property int amountFunded;
@property int amountLookingFor;
@property (nonatomic, strong) NSString *shortDescription;
@property int watchers;
@property int totalNumberBackers;
@property (nonatomic, strong) UIImage *ventureImage;


@end
