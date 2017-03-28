//
//  ProductDetailViewController.h
//  Week2Assessment - Ard
//
//  Created by ardMac on 27/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Products.h"

@class DetailViewController;

@protocol updateTitleDelegate <NSObject>
@optional

-(void) didUpdateTitle:(NSString *) title;
@end

@interface ProductDetailViewController : UIViewController

@property (weak, nonatomic) id<updateTitleDelegate> delegate;
@property (strong,nonatomic) Products *selectedProduct;

@end
