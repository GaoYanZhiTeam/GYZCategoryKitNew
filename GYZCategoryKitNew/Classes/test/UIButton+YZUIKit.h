//
//  UIButton+YZUIKit.h
//  Yanzhi
//
//  Created by AlexChang on 2017/4/13.
//  Copyright © 2017年 com.ecpss.gaoyanzhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (YZUIKit)

@property (nonatomic, strong) UIFont *titleFont;

//title
@property (nonatomic, copy) NSString *normalTitle;
@property (nonatomic, copy) NSString *highlightedTitle;
@property (nonatomic, copy) NSString *disableTitle;

//title Color
@property (nonatomic, strong) UIColor *normalTitleColor;
@property (nonatomic, strong) UIColor *highlightedTitleColor;
@property (nonatomic, strong) UIColor *disableTitleColor;

//backgroundImage
@property (nonatomic, strong) UIImage *normalBackgroundImage;
@property (nonatomic, strong) UIImage *hightlightedBackgroundImage;
@property (nonatomic, strong) UIImage *disabledBackgroundImage;

//image
@property (nonatomic, strong) UIImage *normalImage;
@property (nonatomic, strong) UIImage *hightlightedImage;
@property (nonatomic, strong) UIImage *disabledImage;

/**
 *  创建UIButton，背景透明，字体系统15.0，字体颜色白色
 */
+ (UIButton *)createWithFrame:(CGRect)frame target:(id)target action:(SEL)action;

+ (UIButton *)createWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont backgroundColor:(UIColor *)backgroundColor target:(id)target action:(SEL)action;

@end
