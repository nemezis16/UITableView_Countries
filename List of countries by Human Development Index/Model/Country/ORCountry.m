//
//  ORCountry.m
//  List of countries by Human Development Index
//
//  Created by MacBook on 20.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import "ORCountry.h"

@implementation ORCountry
@synthesize countryNameLocalNameCapitalName=_countryNameLocalNameCapitalName,countryFlag=_countryFlag,countryDetails=_countryDetails;

-(instancetype)initWithCountry:(NSDictionary*)countryNameLocalNameCapitalName flag:(UIImage *)countryFlag details:(NSString *)countryDetails{
    self=[super init];
    if(self){
        _countryNameLocalNameCapitalName=countryNameLocalNameCapitalName;
        _countryFlag=countryFlag;
        _countryDetails=countryDetails;
    }
    return self;
}

@end
