//
//  DetailViewController.h
//  MasterDetailDemo
//
//  Created by Brian on 15/8/31.
//  Copyright (c) 2015年 Brian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HBBaseViewController.h"

@interface DetailViewController : HBBaseViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

