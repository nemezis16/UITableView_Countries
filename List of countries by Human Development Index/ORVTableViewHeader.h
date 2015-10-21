//
//  ORVTableViewHeader.h
//  trainingTableView
//
//  Created by MacBook on 10.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ORVTableViewHeader : UIImageView{
    UILabel* label;
}

-(instancetype)initWithText:(NSString*)text;
-(void)setText:(NSString*)text;

@end
