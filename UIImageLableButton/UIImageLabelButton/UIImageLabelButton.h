//
//  UIImageLabelButton.h
//  LZRelayoutButton
//
//  Created by zhangdong on 16/8/24.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,UIImageLabelButtonType) {
    UIImageLabelButtonTypeNomal  = 0,//默认
    UIImageLabelButtonTypeLeft   = 1,//标题在左
    UIImageLabelButtonTypeBottom = 2,//标题在下
};

@interface UIImageLabelButton : UIButton

@property (nonatomic, assign) UIImageLabelButtonType imageLabelBtnType;

/**
 *  如果设置此值，须在设置完 image 和 title 之前设置
 *  目前只支持 UIImageLabelButtonTypeLeft 情况下的间距设置
 */
@property (nonatomic, assign) CGFloat titleImageSpace;

@end
