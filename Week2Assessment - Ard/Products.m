//
//  Products.m
//  Week2Assessment - Ard
//
//  Created by ardMac on 27/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import "Products.h"

@implementation Products


-(id)initWithName : (NSString *) name withType : (NSString *) date withPicture : (UIImage *) picture withURL: (NSString *) url {
    
    self = [super init];
    if (self ) {
        
        self.name = name;
        self.date = date;
        self.picture = picture;
        self.url = url;
        
        
    }
    return self;
}



@end
