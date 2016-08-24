//
//  UIImageLabelButton.m
//  LZRelayoutButton
//
//  Created by zhangdong on 16/8/24.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "UIImageLabelButton.h"

@interface UIImageLabelButton ()

@property (nonatomic, assign) CGSize imageSize;

@end

@implementation UIImageLabelButton

- (void)setImageLabelBtnType:(UIImageLabelButtonType)imageLabelBtnType {
    
    _imageLabelBtnType = imageLabelBtnType;
    
    if (self.imageLabelBtnType == UIImageLabelButtonTypeLeft) {
        self.titleLabel.textAlignment = NSTextAlignmentRight;
    }
    
    if (self.imageLabelBtnType == UIImageLabelButtonTypeBottom) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    if (self.imageLabelBtnType == UIImageLabelButtonTypeNomal) {
        self.titleLabel.textAlignment = NSTextAlignmentRight;
    }
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state {
    
    self.imageSize = image.size;
    
    [super setImage:image forState:state];
}

// 返回标题rect
- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    if (self.imageLabelBtnType == UIImageLabelButtonTypeLeft) {
        
        CGSize imageSize = self.imageSize;
        CGRect titleRect = CGRectMake(0, 0, contentRect.size.width - imageSize.width - self.titleImageSpace, contentRect.size.height);
        
        return titleRect;
        
    } else if (self.imageLabelBtnType == UIImageLabelButtonTypeBottom) {
        
        CGSize titleSize = [self titleSize];        
        CGRect titleRect = CGRectMake(0, contentRect.size.height - titleSize.height, contentRect.size.width, titleSize.height);
        return titleRect;
        
    } else {
        return [super titleRectForContentRect:contentRect];
    }
}

//重写父类方法，image的坐标
- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    if (self.imageLabelBtnType == UIImageLabelButtonTypeLeft) {
    
        CGSize imageSize = self.imageSize;
        CGFloat contentWidth = contentRect.size.width;
        CGRect imageRect = CGRectMake(contentWidth - imageSize.width, (contentRect.size.height - imageSize.height) / 2, imageSize.width, imageSize.height);
        
        return imageRect;
        
    } else if (self.imageLabelBtnType == UIImageLabelButtonTypeBottom) {
        
        CGSize imageSize = self.imageSize;
        CGRect imageRect = CGRectMake((contentRect.size.width - imageSize.width) / 2, 0, imageSize.width, imageSize.height);
        
        return imageRect;
        
    } else {
        
        return [super imageRectForContentRect:contentRect];
    }
}

- (CGSize)titleSize {
    
    CGRect rect = [self.titleLabel.text boundingRectWithSize:CGSizeMake(1000, 1000)
                                                     options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin
                                                  attributes:@{NSFontAttributeName:self.titleLabel.font}
                                                     context:nil];
    
    return rect.size;
}

@end
