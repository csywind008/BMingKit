//
//  UIButton+BMButton.h
//  BMingKitProject
//
//  Created by 北冥 on 2019/1/3.
//  Copyright © 2019 com.beiming.kit. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (BMButton)

- (void)verticalImageAndTitle:(CGFloat)spacing;
- (void)verticalTitleAndImage:(CGFloat)spacing;

@end

NS_ASSUME_NONNULL_END
