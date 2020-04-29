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
 * @return 返回缩放图片，scale和imageOrientation跟原来的一样。
 */
- (UIImage *_Nonnull)cjmi_resizeImageWithScale:(CGFloat)scale;

@end
