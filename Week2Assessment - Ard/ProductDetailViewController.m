//
//  ProductDetailViewController.m
//  Week2Assessment - Ard
//
//  Created by ardMac on 27/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import "ProductDetailViewController.h"
#import "Products.h"
#import "WebViewController.h"

@interface ProductDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *productImageView;
@property (strong,nonatomic) NSString *url;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *dateTextField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editButton;



@end

@implementation ProductDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.productImageView setImage:self.selectedProduct.picture];
    [self.nameTextField setText:self.selectedProduct.name];
    [self.dateTextField setText:self.selectedProduct.date];
    [self setTitle:self.nameTextField.text];
    
    
    // Do any additional setup after loading the view.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showProductWeb"]) {
        WebViewController *destinationViewController = [segue destinationViewController];
        destinationViewController.selectedURL = self.selectedProduct;
        
    }
}
- (IBAction)changeTitleButtonTapped:(id)sender {
    NSString *newTitle = self.nameTextField.text;
    
    if (self.delegate) {
        [self.delegate didUpdateTitle: newTitle];
    }
}

- (IBAction)editButtonTapped:(id)sender {
    
    if (self.nameTextField.userInteractionEnabled == NO) {
        [self.editButton setTitle: @"Done"];
        self.nameTextField.userInteractionEnabled = YES;
        self.dateTextField.userInteractionEnabled = YES;
        self.nameTextField.hidden = NO;
        
        
    }else {
        [self.editButton setTitle:@"Edit"];
        self.nameTextField.userInteractionEnabled = NO;
        self.dateTextField.userInteractionEnabled = NO;
        self.selectedProduct.name = self.nameTextField.text;
        self.selectedProduct.date = self.dateTextField.text;
        
        
    }
    
    [self setTitle:self.nameTextField.text]; //set the title for the current VC
    
}



@end
