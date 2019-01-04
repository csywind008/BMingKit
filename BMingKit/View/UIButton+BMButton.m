//
//  UIButton+BMButton.m
//  BMingKitProject
//
//  Created by 北冥 on 2019/1/3.
//  Copyright © 2019 com.beiming.kit. All rights reserved.
//

#import "UIButton+BMButton.h"

@implementation UIButton (BMButton)

- (void)verticalImageAndTitle:(CGFloat)spacing
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    //    CGSize textSize = [self.titleLabel.text sizeWithFont:self.titleLabel.font];
    
    CGSize textSize = [self.titleLabel.text sizeWithFont:self.titleLabel.font constrainedToSize:self.bounds.size lineBreakMode:NSLineBreakByWordWrapping];
    
    
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleSize.width + 0.5 < frameSize.width) {
        titleSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageSize.height + titleSize.height + spacing);
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), 0.0, 0.0, - titleSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (totalHeight - titleSize.height), 0);
}

- (void)verticalTitleAndImage:(CGFloat)spacing
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    //    CGSize textSize = [self.titleLabel.text sizeWithFont:self.titleLabel.font];
    
    CGSize textSize = [self.titleLabel.text sizeWithFont:self.titleLabel.font constrainedToSize:self.bounds.size lineBreakMode:NSLineBreakByWordWrapping];
    
    
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleSize.width + 0.5 < frameSize.width) {
        titleSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageSize.height + titleSize.height + spacing);
    
//    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), 0.0, 0.0, - titleSize.width);
//    self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (totalHeight - titleSize.height), 0);
    
    self.titleEdgeInsets = UIEdgeInsetsMake(- (totalHeight - titleSize.height), - imageSize.width, 0, 0);
    self.imageEdgeInsets = UIEdgeInsetsMake(0, 0 , - (totalHeight - titleSize.height), - titleSize.width);

}

//- (void)layoutSubviews {
//    [super layoutSubviews];
//    [self verticalTitleAndImage:10];
//}


@end
