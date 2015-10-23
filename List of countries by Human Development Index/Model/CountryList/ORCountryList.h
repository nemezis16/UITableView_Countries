//
//  ORCountryList.h
//  List of countries by Human Development Index
//
//  Created by MacBook on 20.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ORCountry.h"


extern NSString * const ORCountryListCountryKey;
extern NSString * const ORCountryListCapitalKey;
extern NSString * const ORCountryListISOKey;
extern NSString * const ORCountryListCapitalKey;
extern NSString * const ORCountryListContinentKey;

@interface ORCountryList : NSObject
@property (nonatomic,strong) NSMutableArray* countryArray;

-(instancetype)initWithStaticCountryList;

@end
