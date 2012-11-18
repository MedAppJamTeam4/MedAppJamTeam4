//
//  Instance.h
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Instance : NSObject
@property (nonatomic, copy) NSDate *date;
@property (nonatomic, copy) NSString *descriptionText;
@property (nonatomic, copy) UIImage *instanceImage;

- (id)initWithDate:(NSDate *)date description:(NSString *)description image:(UIImage *)image;
@end
