//
//  UIColor+lgb_color.m
//  ColorCategory
//
//  Created by lgb789 on 16/5/12.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "UIColor+lgb_color.h"

@implementation UIColor (lgb_color)

+(UIColor *)lgb_colorFromHexCode:(NSString *)hexString
{
    NSString *str = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if (str.length == 3) {
        str = [NSString stringWithFormat:@"%@%@%@%@%@%@",
               [str substringWithRange:NSMakeRange(0, 1)],
               [str substringWithRange:NSMakeRange(0, 1)],
               [str substringWithRange:NSMakeRange(1, 1)],
               [str substringWithRange:NSMakeRange(1, 1)],
               [str substringWithRange:NSMakeRange(2, 1)],
               [str substringWithRange:NSMakeRange(2, 1)]
               ];
    }
    
    if (str.length == 6) {
        str = [str stringByAppendingString:@"ff"];
    }
    unsigned int baseValue;
    [[NSScanner scannerWithString:str] scanHexInt:&baseValue];
    
    CGFloat red = ((baseValue >> 24) & 0xFF) / 255.0;
    CGFloat green = ((baseValue >> 16) & 0xFF) / 255.0;
    CGFloat blue = ((baseValue >> 8) & 0xFF) / 255.0;
    CGFloat alpha = (baseValue & 0xFF) / 255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+(UIColor *)lgb_colorWithRed:(CGFloat)red
                       green:(CGFloat)green
                        blue:(CGFloat)blue
                       alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
}

@end
