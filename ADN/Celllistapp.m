//
//  Celllistapp.m
//  ADN
//
//  Created by Dao Pham Hoang Duy on 11/19/13.
//  Copyright (c) 2013 Le Ngoc Duy. All rights reserved.
//

#import "Celllistapp.h"

@implementation Celllistapp

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)prepareForReuse
{
    [super prepareForReuse];
    UIImage *placeholder = [UIImage imageNamed:@"placeholder.png"];
    _imageviewlistapp.layer.cornerRadius=3;
    _imageviewlistapp.clipsToBounds = YES;
    _imageviewlistapp.layer.cornerRadius = 15;
    [_imageviewlistapp setImage:placeholder];
    
}
@end
