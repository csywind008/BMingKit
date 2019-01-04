//
//  BMButton.m
//  BMingKitProject
//
//  Created by 北冥 on 2019/1/4.
//  Copyright © 2019 com.beiming.kit. All rights reserved.
//

#import "BMButton.h"

@interface BMButton ()

@property (nonatomic, assign)  BMButtonType bmButtonType;
@property (nonatomic, assign)  float spacing;

@end

@implementation BMButton

/**
 垂直布局，图片在上
 
 @param spacing 间距距离
 */
- (void)verticalImageAndTitle:(CGFloat)spacing {
    self.bmButtonType = BMButtonTypeVerticalImageAndTitle;
    self.spacing = spacing;
}


/**
 垂直布局，文字在上
 
 @param spacing 间距距离
 */
- (void)verticalTitleAndImage:(CGFloat)spacing {
    self.bmButtonType = BMButtonTypeVerticalTitleAndImage;
    self.spacing = spacing;
}



/**
 水平布局，图片在左
 
 @param spacing 间距距离
 */
- (void)horizontalImageAndTitle:(CGFloat)spacing {
    self.bmButtonType = BMButtonTypeHorizontalImageAndTitle;
    self.spacing = spacing;
}


/**
 水平布局，文字在左
 
 @param spacing 间距距离
 */
- (void)horizontalTitleAndImage:(CGFloat)spacing {
    self.bmButtonType = BMButtonTypeHorizontalTitleAndImage;
    self.spacing = spacing;
}


/**
 UIButton 布局
 
 @param buttonType 图片和文字方向
 @param spacing 间隔距离
 */
- (void)layoutSubview:(BMButtonType )buttonType spacing:(float)spacing {
    self.bmButtonType = buttonType;
    self.spacing = spacing;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    [self updateSubviews];
}


- (void)updateSubviews {
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    //    CGSize textSize = [self.titleLabel.text sizeWithFont:self.titleLabel.font];
    
    CGSize textSize = [self.titleLabel.text sizeWithFont:self.titleLabel.font constrainedToSize:self.bounds.size lineBreakMode:NSLineBreakByWordWrapping];
    
    
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleSize.width + 0.5 < frameSize.width) {
        titleSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageSize.height + titleSize.height + self.spacing);
    CGFloat totalWidth = (imageSize.width + titleSize.width + self.spacing / 2);

    switch (self.bmButtonType) {
        case BMButtonTypeHorizontalImageAndTitle: {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -_spacing , 0.0, 0.0);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, _spacing ,0, 0.0);
        }
            break;
        case BMButtonTypeHorizontalTitleAndImage: {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(totalWidth - titleSize.width),0, (totalWidth - titleSize.width));
            self.imageEdgeInsets = UIEdgeInsetsMake(0, (totalWidth - imageSize.width), 0.0, -(totalWidth - imageSize.width));
        }
            break;
        
        case BMButtonTypeVerticalTitleAndImage: {
            self.titleEdgeInsets = UIEdgeInsetsMake(- (totalHeight - titleSize.height), - imageSize.width, 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0 , - (totalHeight - titleSize.height), - titleSize.width);
            
        }
            break;
        case BMButtonTypeVerticalImageAndTitle: {
            self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), 0.0, 0.0, - titleSize.width);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (totalHeight - titleSize.height), 0);
        }
            break;
        default:
            break;
    }
}

@end
