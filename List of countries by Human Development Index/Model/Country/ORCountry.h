//
//  ORCountry.h
//  List of countries by Human Development Index
//
//  Created by MacBook on 20.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ORCountry : NSObject

//@property (nonatomic,weak)NSString* countryName;
//@property (nonatomic,weak)NSString* localName;
//@property (nonatomic,weak)NSString* capitalName;

@property (nonatomic,strong)NSDictionary* countryNameLocalNameCapitalName;
@property (nonatomic,strong)UIImage* countryFlag;
@property(nonatomic,strong)NSString* countryDetails;

-(instancetype)initWithCountry:(NSDictionary*)countryNameLocalNameCapitalName flag:(UIImage*)countryFlag details:(NSString*) countryDetails;

@end
