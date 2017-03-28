//
//  Products.h
//  Week2Assessment - Ard
//
//  Created by ardMac on 27/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Products : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *date;
@property (strong,nonatomic) UIImage *picture;
@property (strong,nonatomic) NSString *url;

-(id)initWithName : (NSString *) name withType : (NSString *) date withPicture : (UIImage *) picture withURL: (NSString *) url ;

@end
