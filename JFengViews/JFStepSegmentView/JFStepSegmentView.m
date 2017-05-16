//
//  JFStepSegmentView.m
//  JohnnyFengMaker
//
//  Created by warmjar on 2017/5/15.
//  Copyright © 2017年 warmjar. All rights reserved.
//

#import "JFStepSegmentView.h"

@interface JFStepSegmentView()

// 标题组: <NSString>
@property (nonatomic, copy) NSArray<NSString*>* items;
// 步骤数组: <UILabel>
@property (nonatomic, strong) NSArray* stepLabels;
// 标题组: <UILabel>
@property (nonatomic, strong) NSArray* titleLabels;
// 分割线: <UIView>
@property (nonatomic, strong) NSArray* seperators;
// 指示器
@property (nonatomic, strong) UILabel* indicator;

@end

@implementation JFStepSegmentView

# pragma mask 3 life circle
- (instancetype)initWithItems:(NSArray *)items {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.items = items;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat heightStep = self.height * 0.45;
    CGFloat gap = 3;
    CGFloat heightIndicator = self.height * 0.2;
    CGFloat heightTitle = self.height * (1 - 0.45 - 0.2);
    
    
}

# pragma mask 4 setter


# pragma mask 4 getter
- (NSArray *)stepLabels {
    if (!_stepLabels) {
        NSMutableArray* labels = [NSMutableArray array];
        for (int i = 0; i < self.items.count; i++) {
            UILabel* label = [UILabel new];
            
        }
    }
    return _stepLabels;
}


@end
