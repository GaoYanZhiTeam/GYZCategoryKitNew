//
//  UIButton+YZUIKit.m
//  Yanzhi
//
//  Created by AlexChang on 2017/4/13.
//  Copyright © 2017年 com.ecpss.gaoyanzhi. All rights reserved.
//

#import "UIButton+YZUIKit.h"

@implementation UIButton (YZUIKit)
@dynamic titleFont;

@dynamic normalTitle;
@dynamic highlightedTitle;
@dynamic disableTitle;

@dynamic normalTitleColor;
@dynamic highlightedTitleColor;
@dynamic disableTitleColor;

@dynamic normalBackgroundImage;
@dynamic hightlightedBackgroundImage;
@dynamic disabledBackgroundImage;

@dynamic normalImage;
@dynamic hightlightedImage;
@dynamic disabledImage;


+ (UIButton *)createWithFrame:(CGRect)frame target:(id)target action:(SEL)action{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    button.backgroundColor = [UIColor clearColor];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    button.normalTitleColor = [UIColor whiteColor];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (UIButton *)createWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont backgroundColor:(UIColor *)backgroundColor target:(id)target action:(SEL)action{
    UIButton *button = [[self class] createWithFrame:frame target:target action:action];
    button.normalTitle = title;
    button.titleLabel.font = titleFont;
    button.backgroundColor = backgroundColor;
    button.normalTitleColor = titleColor;
    return button;
}


#pragma mark - Getter & Setter

- (UIFont *)titleFont{
    return self.titleLabel.font;
}
- (void)setTitleFont:(UIFont *)titleFont{
    self.titleLabel.font = titleFont;
}

//title
- (NSString *)normalTitle{
    return [self titleForState:UIControlStateNormal];
}
- (void)setNormalTitle:(NSString *)normalTitle{
    [self setTitle:normalTitle forState:UIControlStateNormal];
}

- (NSString *)highlightedTitle{
    return [self titleForState:UIControlStateHighlighted];
}
- (void)setHighlightedTitle:(NSString *)highlightedTitle{
    [self setTitle:highlightedTitle forState:UIControlStateHighlighted];
}

- (NSString *)disableTitle{
    return [self titleForState:UIControlStateDisabled];
}
- (void)setDisableTitle:(NSString *)disableTitle{
    [self setTitle:disableTitle forState:UIControlStateDisabled];
}

//title color
- (UIColor *)normalTitleColor{
    return [self titleColorForState:UIControlStateNormal];
}
- (void)setNormalTitleColor:(UIColor *)normalTitleColor{
    [self setTitleColor:normalTitleColor forState:UIControlStateNormal];
}

- (UIColor *)highlightedTitleColor{
    return [self titleColorForState:UIControlStateHighlighted];
}
- (void)setHighlightedTitleColor:(UIColor *)highlightedTitleColor{
    [self setTitleColor:highlightedTitleColor forState:UIControlStateHighlighted];
}

- (UIColor *)disableTitleColor{
    return [self titleColorForState:UIControlStateDisabled];
}
- (void)setDisableTitleColor:(UIColor *)disableTitleColor{
    [self setTitleColor:disableTitleColor forState:UIControlStateDisabled];
}

//backgroundImage
- (UIImage *)normalBackgroundImage{
    return [self backgroundImageForState:UIControlStateNormal];
}
- (void)setNormalBackgroundImage:(UIImage *)normalBackgroundImage{
    [self setBackgroundImage:normalBackgroundImage forState:UIControlStateNormal];
}

- (UIImage *)hightlightedBackgroundImage{
    return [self backgroundImageForState:UIControlStateHighlighted];
}
- (void)setHightlightedBackgroundImage:(UIImage *)hightlightedBackgroundImage{
    [self setBackgroundImage:hightlightedBackgroundImage forState:UIControlStateHighlighted];
}

- (UIImage *)disabledBackgroundImage{
    return [self backgroundImageForState:UIControlStateDisabled];
}
- (void)setDisabledBackgroundImage:(UIImage *)disabledBackgroundImage{
    [self setBackgroundImage:disabledBackgroundImage forState:UIControlStateDisabled];
}

//image
- (UIImage *)normalImage{
    return [self imageForState:UIControlStateNormal];
}
- (void)setNormalImage:(UIImage *)normalImage{
    [self setImage:normalImage forState:UIControlStateNormal];
}

- (UIImage *)hightlightedImage{
    return [self imageForState:UIControlStateHighlighted];
}
- (void)setHightlightedImage:(UIImage *)hightlightedImage{
    [self setImage:hightlightedImage forState:UIControlStateHighlighted];
}

- (UIImage *)disabledImage{
    return [self imageForState:UIControlStateDisabled];
}
- (void)setDisabledImage:(UIImage *)disabledImage{
    [self setImage:disabledImage forState:UIControlStateDisabled];
}


@end
