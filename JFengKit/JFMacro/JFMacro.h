//
//  JFMacro.h
//  JohnnyFengMaker
//
//  Created by warmjar on 2017/5/15.
//  Copyright © 2017年 warmjar. All rights reserved.
//

#ifndef JFMacro_h
#define JFMacro_h

#import <UIKit/UIKit.h>

// 屏幕尺寸相关
#define SCREEN_BOUNDS           [UIScreen mainScreen].bounds
#define SCREEN_WIDTH            [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT           [UIScreen mainScreen].bounds.size.height

// 十六进制->颜色
#define JFHexColor(HEX,ALPHA)   [UIColor colorWithRed:(CGFloat)((HEX & 0xff0000) >> 8*2)/(CGFloat)0xff    \
                                                green:(CGFloat)((HEX & 0x00ff00) >> 8*1)/(CGFloat)0xff    \
                                                 blue:(CGFloat)((HEX & 0x0000ff) >> 8*0)/(CGFloat)0xff    \
                                                alpha:ALPHA]



/**
 按指定的高度和scale计算对应的系统字体大小 fontSize

 @param height 指定的字体高度;
 @param scale 缩放比例(0.0~1.0);
 @return CGFloat
 */
static inline CGFloat JFMakeFontsize(CGFloat height, CGFloat scale) {
    CGFloat testfontsize = 10;
    CGSize size = [@"test" sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:testfontsize]}];
    return height/size.height * testfontsize * scale;
}




#endif /* JFMacro_h */
