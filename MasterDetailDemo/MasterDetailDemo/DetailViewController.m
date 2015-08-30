//
//  DetailViewController.m
//  MasterDetailDemo
//
//  Created by Brian on 15/8/31.
//  Copyright (c) 2015年 Brian. All rights reserved.
//

#import "DetailViewController.h"

#import "someViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    UIButton* aBtn = [[UIButton alloc] initWithFrame:CGRectMake(120, 120, 30, 20)];
    [aBtn setBackgroundColor:[UIColor redColor]];
    [aBtn addTarget:self action:@selector(onABtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aBtn];

}

- (void)onABtn
{
    someViewController* viewController = [[someViewController alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
