//
//  ViewController.m
//  Test_Search
//
//  Created by MacMini on 3/23/18.
//  Copyright © 2018 MacMini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UISearchController *searchController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:[[UIViewController alloc] init]];
    self.navigationItem.searchController = self.searchController;
    self.navigationItem.hidesSearchBarWhenScrolling = NO;
    
//    self.edgesForExtendedLayout = YES;
//    self.extendedLayoutIncludesOpaqueBars = YES;
    
//    [self.navigationController.navigationBar setTranslucent:YES];
    [self.navigationController.navigationBar setTranslucent:NO];
}

- (IBAction)onButtonTapped:(id)sender {
    NSString *identifier = @"TestYellowVC";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:identifier];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
