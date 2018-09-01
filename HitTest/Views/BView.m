//
//  BView.m
//  HitTest
//
//  Created by Destiny on 2018/9/1.
//  Copyright © 2018年 Destiny. All rights reserved.
//

#import "BView.h"

@interface BView()

@property (strong, nonatomic) UIButton *btn;

@end


@implementation BView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setButton];
    }
    return self;
}

- (void)setButton
{
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.frame = CGRectMake(100, -20, 150, 40);
    self.btn.backgroundColor = [UIColor blueColor];
    [self.btn setTitle:@"我是一个Button" forState:UIControlStateNormal];
    [self.btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.btn];
}

- (void)btnAction:(UIButton *)sender
{
    NSLog(@"点击了按钮");
}

//处理超出区域点击无效的问题
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    if (self.isHidden == NO) {
        // 转换坐标
        CGPoint newPoint = [self convertPoint:point toView:self.btn];
        // 判断点击的点是否在按钮区域内
        if ( [self.btn pointInside:newPoint withEvent:event]) {
            //返回按钮
            return self.btn;
        }else{
            return [super hitTest:point withEvent:event];
        }
    }
    else {
        return [super hitTest:point withEvent:event];
    }
}

@end
