//
//  ORVTableViewHeader.m
//  trainingTableView
//
//  Created by MacBook on 10.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import "ORVTableViewHeader.h"

@implementation ORVTableViewHeader

-(instancetype)initWithText:(NSString *)text{
    UIImage* img=[UIImage imageNamed:@"Header.jpg"];
    self = [super initWithImage:img];
    if (self) {
        label=[[UILabel alloc]initWithFrame:CGRectMake(20, 0, 250, 100)];
        label.textColor=[UIColor whiteColor];
        label.backgroundColor=[UIColor clearColor];
        label.font=[UIFont systemFontOfSize:30];
        label.text=text;
        label.numberOfLines=3;
        [self addSubview:label];
    }
    return self;
}
-(void)setText:(NSString *)text{
    label.text=text;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
