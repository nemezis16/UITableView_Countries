//
//  ORDetailViewController.h
//  List of countries by Human Development Index
//
//  Created by MacBook on 20.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ORCountry.h"

@interface ORDetailViewController : UIViewController
@property (nonatomic,strong) ORCountry* country;
@end
