//
//  UIView+layout.h
//  JohnnyFengMaker
//
//  Created by warmjar on 2017/5/15.
//  Copyright © 2017年 warmjar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (layout)

/**
 frame.origin.x
 */
@property (nonatomic, assign) CGFloat x;

/**
 frame.origin.y
 */
@property (nonatomic, assign) CGFloat y;

/**
 center.x
 */
@property (nonatomic, assign) CGFloat centerX;

/**
 center.y
 */
@property (nonatomic, assign) CGFloat centerY;

/**
 bounds.size.width
 */
@property (nonatomic, assign) CGFloat width;

/**
 bounds.size.height
 */
@property (nonatomic, assign) CGFloat height;

/**
 layer.cornerRadius
 */
@property (nonatomic, assign) CGFloat cornerRadius;

@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;

@end
