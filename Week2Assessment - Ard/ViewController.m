//
//  ViewController.m
//  Week2Assessment - Ard
//
//  Created by ardMac on 27/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import "ViewController.h"
#import "Products.h"
#import "ProductsTableViewCell.h"
#import "ProductDetailViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, updateTitleDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSMutableArray *products;
@property (assign,nonatomic) NSInteger selectedIndex;
@property (weak, nonatomic) IBOutlet UINavigationItem *mainNavigationBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
        [self generateProducts];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

-(void)generateProducts {
    
    self.products =[[NSMutableArray alloc]init];

    
    Products *airpod = [[[Products alloc]init] initWithName:@"Air Pods" withType:@"December 19" withPicture:[UIImage imageNamed:@"AirPods"] withURL:@"https://en.wikipedia.org/wiki/AirPods"];
    [self.products addObject:airpod];
    Products *appleWatch = [[[Products alloc]init] initWithName:@"Apple Watch" withType:@"September 16" withPicture:[UIImage imageNamed:@"AppleWatch"] withURL:@"https://en.wikipedia.org/wiki/Apple_Watch#First_generation"];
    [self.products addObject:appleWatch];
    Products *ipadPro = [[[Products alloc]init] initWithName:@"iPad Pro" withType:@"March 31" withPicture:[UIImage imageNamed:@"IPadPro"] withURL:@"https://en.wikipedia.org/wiki/IPad_Pro"];
    [self.products addObject:ipadPro];
    Products *iphone7 = [[[Products alloc]init] initWithName:@"iphone7" withType:@"September 16" withPicture:[UIImage imageNamed:@"IPhone7"] withURL:@"https://en.wikipedia.org/wiki/IPhone_7"];
    [self.products addObject:iphone7];
    Products *macbookPro = [[[Products alloc]init] initWithName:@"Macbook Pro" withType:@"October 27" withPicture:[UIImage imageNamed:@"MacbookPro"] withURL:@"https://en.wikipedia.org/wiki/MacBook_Pro"];
    [self.products addObject:macbookPro];
    
}

//pragma mark is for bookmarking
#pragma mark - tableView datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.products count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ProductsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"productsCell"];
    
    Products *currentProduct = [self.products objectAtIndex:indexPath.row];
    
    [cell.nameLabel setText:currentProduct.name];
    [cell.dateLabel setText:currentProduct.date];
    [cell.prductImageView setImage:currentProduct.picture];
    
    
    return cell;
}

#pragma mark - tableView delegate
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.selectedIndex = indexPath.row;
    [self performSegueWithIdentifier:@"showProductDetail" sender:self]; //perform segue
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showProductDetail"]) {
        ProductDetailViewController *destinationViewController = [segue destinationViewController];
        destinationViewController.selectedProduct = [self.products objectAtIndex:self.selectedIndex];
        destinationViewController.delegate = self; 
    }
}

-(void) didUpdateTitle:(NSString *) title {
    [self.mainNavigationBar setTitle: title];
}



@end
