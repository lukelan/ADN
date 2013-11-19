//
//  ViewController.h
//  ADN
//
//  Created by Le Ngoc Duy on 11/19/13.
//  Copyright (c) 2013 Le Ngoc Duy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UISegmentedControl *Segment;
@property (strong, nonatomic) IBOutlet UITableView *Tableviewlistapp;
@property float getContentOffsetseg1;
@property float getContentOffsetseg2;
@property float getContentOffsetseg3;


- (IBAction)btsegemented:(id)sender;

@end
