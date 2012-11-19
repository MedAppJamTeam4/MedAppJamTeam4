//
//  Instance.m
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "Instance.h"

@implementation Instance
- (id)initWithDate:(NSDate *)date description:(NSString *)description image:(UIImage *)image
{
    self = [super init];
    if (self) {
        _date = date;
        _descriptionText = description;
        _instanceImage = image;
        return self;
    }
    return nil;
}

@end
