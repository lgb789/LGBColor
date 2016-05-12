//
//  UIColor+lgb_color.h
//  ColorCategory
//
//  Created by lgb789 on 16/5/12.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (lgb_color)

+(UIColor *)lgb_colorFromHexCode:(NSString *)hexString;

+(UIColor *)lgb_colorWithRed:(CGFloat)red
                       green:(CGFloat)green
                        blue:(CGFloat)blue
                       alpha:(CGFloat)alpha;

@end
