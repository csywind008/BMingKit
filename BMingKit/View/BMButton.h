//
//  BMButton.h
//  BMingKitProject
//
//  Created by 北冥 on 2019/1/4.
//  Copyright © 2019 com.beiming.kit. All rights reserved.
//

#import <UIKit/UIKit.h>



NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, BMButtonType) {
    BMButtonTypeHorizontalImageAndTitle = 0,    //水平方向，图片在左
    BMButtonTypeHorizontalTitleAndImage,        //水平方向，文字在左
    BMButtonTypeVerticalImageAndTitle ,         //垂直方向，图片在左
    BMButtonTypeVerticalTitleAndImage ,         //垂直方向，文字在左
    
};

@interface BMButton : UIButton


/**
 垂直布局，图片在上

 @param spacing 间距距离
 */
- (void)verticalImageAndTitle:(CGFloat)spacing;

/**
 垂直布局，文字在上
 
 @param spacing 间距距离
 */
- (void)verticalTitleAndImage:(CGFloat)spacing;

/**
 水平布局，图片在左
 
 @param spacing 间距距离
 */
- (void)horizontalImageAndTitle:(CGFloat)spacing;

/**
 水平布局，文字在左
 
 @param spacing 间距距离
 */
- (void)horizontalTitleAndImage:(CGFloat)spacing;


/**
 UIButton 布局

 @param buttonType 图片和文字方向
 @param spacing 间隔距离
 */
- (void)layoutSubview:(BMButtonType )buttonType spacing:(float)spacing;

@end

NS_ASSUME_NONNULL_END
