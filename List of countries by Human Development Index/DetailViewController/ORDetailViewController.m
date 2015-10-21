//
//  ORDetailViewController.m
//  List of countries by Human Development Index
//
//  Created by MacBook on 20.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import "ORDetailViewController.h"

@interface ORDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@end

@implementation ORDetailViewController
@synthesize detailLabel,country;

- (void)viewDidLoad
{
    [super viewDidLoad];

 self.detailLabel.text= self.country.countryDetails;
    self.detailLabel.numberOfLines=0;
    self.navigationItem.title=[self.country.countryNameLocalNameCapitalName objectForKey:@"Country"];
}


@end
