//
//  ProductsTableViewCell.h
//  Week2Assessment - Ard
//
//  Created by ardMac on 27/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *prductImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
