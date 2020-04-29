//
//  UIImage+CJMImageResize.h
//  CJMImageCategory
//
//  Created by chenjm on 2020/4/29.
//

#import <UIKit/UIKit.h>

@interface UIImage (CJMImageResize)

/**
 * @brief 缩放图片
 * @param scale 缩放比例
 */
- (UIImage *_Nonnull)cjmi_resizeImageWithScale:(CGFloat)scale;

@end
