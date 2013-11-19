//
//  ViewController.m
//  ADN
//
//  Created by Le Ngoc Duy on 11/19/13.
//  Copyright (c) 2013 Le Ngoc Duy. All rights reserved.
//
#define IS_IPHONE5 ([[UIScreen mainScreen] bounds].size.height == 568)
#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self Tableviewlistapp]setDelegate:self];
    [[self Tableviewlistapp]setDataSource:self];
    [_Tableviewlistapp reloadData];

	// Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}
-(NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section
{
    if(_Segment.selectedSegmentIndex==0)
    {
        //return array list 1
        return 20;
    }
    else if (_Segment.selectedSegmentIndex==1)
    {
        //return array list 2
        return 15;
    }
    else
        //return array list 3
        if (_Segment.selectedSegmentIndex==2) {
            return 25;
            
        }
    
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    NSString *indexrow = [NSString stringWithFormat:@"%d",indexPath.row];
    if(_Segment.selectedSegmentIndex==0)
    {
        UILabel *label;
       UIButton * button;
        label = (UILabel *)[cell viewWithTag:1];// label number
        label.text = indexrow ;
        label = (UILabel *)[cell viewWithTag:2];//label title
        label.text = @"Title content" ;
        label = (UILabel *)[cell viewWithTag:3];//label category
        label.text = @"Game" ;
        button = (UIButton *)[cell viewWithTag:4];//button category
        [button setTitle:@"$0.99" forState:UIControlStateNormal];
        button.layer.borderWidth=1;
        button.layer.borderColor = [UIColor blueColor].CGColor;
        button.layer.cornerRadius = 4;
        //Add imgae in cell
//        UIImageView * imageview;
//        UIImage *image = [UIImage imageNamed:@"placeholder.png"];
//        imageview=(UIImageView*)[cell viewWithTag:5];//image view
//          imageview.layer.cornerRadius=3;
//       imageview.clipsToBounds = YES;
//        imageview.layer.cornerRadius = 15;
//        [imageview setImage:image];
    }
    else if(_Segment.selectedSegmentIndex==1) {
        UILabel *label;
        UIButton * button;
        label = (UILabel *)[cell viewWithTag:1];
        label.text = indexrow ;
        label = (UILabel *)[cell viewWithTag:2];
        label.text = @"List Second View" ;
        label = (UILabel *)[cell viewWithTag:3];
        label.text = @"Music" ;
        button = (UIButton *)[cell viewWithTag:4];
        [button setTitle:@"$0.99" forState:UIControlStateNormal];
        button.layer.borderWidth=1;
        button.layer.borderColor = [UIColor blueColor].CGColor;
        button.layer.cornerRadius = 4;
        //Add imgae in cell
//        UIImageView * imageview;
//        UIImage *image = [UIImage imageNamed:@"placeholder.png"];
//        imageview=(UIImageView*)[cell viewWithTag:5];
//        imageview.layer.cornerRadius=3;
//        imageview.clipsToBounds = YES;
//        imageview.layer.cornerRadius = 15;
//        [imageview setImage:image];
    }
    else if(_Segment.selectedSegmentIndex==2) {
        UILabel *label;
        UIButton * button;
        label = (UILabel *)[cell viewWithTag:1];
        label.text = indexrow ;
        label = (UILabel *)[cell viewWithTag:2];
        label.text = @"List Third" ;
        label = (UILabel *)[cell viewWithTag:3];
        label.text = @"Navigation" ;
      
        button = (UIButton *)[cell viewWithTag:4];
        [button setTitle:@"$0.99" forState:UIControlStateNormal];
        button.layer.borderWidth=1;
        button.layer.borderColor = [UIColor blueColor].CGColor;
        button.layer.cornerRadius = 4;
        //Add imgae in cell
//        UIImageView * imageview;
//        UIImage *image = [UIImage imageNamed:@"placeholder.png"];
//        imageview=(UIImageView*)[cell viewWithTag:5];
//        imageview.layer.cornerRadius=3;
//        imageview.clipsToBounds = YES;
//        imageview.layer.cornerRadius = 15;
//        [imageview setImage:image];
        
    }
    
   // NSLog(@"%f",_Tableviewlistapp.contentOffset.y);
    
    return cell;
}
- (IBAction)btsegemented:(id)sender {
    switch (self.Segment.selectedSegmentIndex) {
            
        case 0:
            [_Tableviewlistapp reloadData];
            [self.Tableviewlistapp setContentOffset:CGPointMake(0, _getContentOffsetseg1) animated:NO];
            break;
        case 1:
            [_Tableviewlistapp reloadData];
            [self.Tableviewlistapp setContentOffset:CGPointMake(0,  _getContentOffsetseg2) animated:NO];
            break;
        case 2:
            
            [_Tableviewlistapp reloadData];
            [self.Tableviewlistapp setContentOffset:CGPointMake(0,  _getContentOffsetseg3) animated:NO];
            break;
    }
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
   // NSLog(@"Will begin dragging");
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    

    if(_Segment.selectedSegmentIndex==0)
    {
        // get contenoffset segment 1
        _getContentOffsetseg1 =_Tableviewlistapp.contentOffset.y;
    }
    else if(_Segment.selectedSegmentIndex==1) {
        // get contenoffset segment 2
        _getContentOffsetseg2 =_Tableviewlistapp.contentOffset.y;
        
    }
    else if(_Segment.selectedSegmentIndex==2) {
        // get contenoffset segment 3
        
        _getContentOffsetseg3 =_Tableviewlistapp.contentOffset.y;
        
    }
    
}
-(void)viewWillAppear:(BOOL)animated
{
    
    if (IS_IPHONE5) {
        //        NSLog(@"iPhone 5");
         [[self Tableviewlistapp] setFrame:CGRectMake(0, 109, 320, 459)];
    } else {
        //        NSLog(@"iphone 4s or lower");
        [[self Tableviewlistapp] setFrame:CGRectMake(0, 109, 320, 371)];
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
