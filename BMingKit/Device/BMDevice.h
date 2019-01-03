//
//  BMDevice.h
//  BMKitProject
//
//  Created by 北冥 on 2019/1/3.
//  Copyright © 2019 com.beichen.kit. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BMDevice : NSObject


/**
 获取系统版本号
 */
+ (CGFloat)getSystemVersion;
+ (NSString *)getSystemVersionStr;

/**
 获取硬件型号
 */
+ (NSString *)getDevicePlatform;

/**
 获取系统语言
 */
+ (NSString *)getPreferredLanguage;

/**
 判断是否中文
 */
+ (BOOL)isChineseLanguage;

/**
 获取APP版本号
 默认显示2个小数点的模式,例如3.0改为3.0.0
 */
+ (NSString *)getAPPVersion;




@end

NS_ASSUME_NONNULL_END
