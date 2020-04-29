//
//  UIImage+CJMImageResize.m
//  CJMImageCategory
//
//  Created by chenjm on 2020/4/29.
//

#import "UIImage+CJMImageResize.h"

@implementation UIImage (CJMImageResize)

- (UIImage *)cjmi_resizeImageWithScale:(CGFloat)scale {
    CGRect imageRect = { CGPointZero, self.size };
    UIGraphicsBeginImageContextWithOptions(self.size, NO, scale);
    CGContextRef outputContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(outputContext, 1.0, -1.0);
    CGContextTranslateCTM(outputContext, 0, -self.size.height);
    CGContextDrawImage(outputContext, imageRect, self.CGImage);
    
    UIImage *outputImage = UIGraphicsGetImageFromCurrentImageContext();
    outputImage = [outputImage initWithCGImage:outputImage.CGImage
                                         scale:self.scale
                                   orientation:self.imageOrientation];
    
    UIGraphicsEndImageContext();
    
    return outputImage;
}

@end
