//
//  JFStepSegmentView.h
//  JohnnyFengMaker
//
//  Created by warmjar on 2017/5/15.
//  Copyright © 2017年 warmjar. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface JFStepSegmentView : UIView


/**
 初始化;

 @param items 标题组<NSString>;
 @return JFStepSegmentView*;
 */
- (instancetype) initWithItems:(NSArray*)items;


/**
 当前步骤数: 默认0;
 */
@property (nonatomic, assign) NSInteger currentStep;


/**
 是否要高亮显示当前步骤前的item: 默认YES;
 */
@property (nonatomic, assign) BOOL shouldHightlightPreCurStep;


/**
 默认颜色: 灰色
 */
@property (nonatomic, copy) UIColor* normalColor;

/**
 高亮颜色: 默认 0xfff143
 */
@property (nonatomic, copy) UIColor* tintColor;



@end
