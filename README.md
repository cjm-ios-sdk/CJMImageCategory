# CJMImageCategory

[![CI Status](https://img.shields.io/travis/chenjm/CJMImageCategory.svg?style=flat)](https://travis-ci.org/chenjm/CJMImageCategory)
[![Version](https://img.shields.io/cocoapods/v/CJMImageCategory.svg?style=flat)](https://cocoapods.org/pods/CJMImageCategory)
[![License](https://img.shields.io/cocoapods/l/CJMImageCategory.svg?style=flat)](https://cocoapods.org/pods/CJMImageCategory)
[![Platform](https://img.shields.io/cocoapods/p/CJMImageCategory.svg?style=flat)](https://cocoapods.org/pods/CJMImageCategory)

UIImage相关的接口扩展，图片缩放，染色，纯色图片共享等。


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

- UIImage (CJMImageResize) 图片缩放

```objc
UIImage *image = [UIImage imageNamed:@"image.png"];
UIImage *resizeImage = [image cjmi_resizeImageWithScale:0.5];
```

- UIImage (CJMImageTintColor) 图片染色

```objc
// 将图片进行染色
UIImage *tintImage = [image cjmi_tintImageWithColor:[UIColor redColor]];

// 生成一张纯色的图片
UIImage *tintColorImage = [UIImage cjmi_tintImageWithColor:[UIColor redColor] size:CGSizeMake(10, 10)
                                                     scale:1];
```

- UIImage (CJMImageShareTintImage) 共享纯色的图片，如果使用这种纯色的图片比较多，可以使用这种共享的方式。

```objc
// 分享一张图片，如果不存在该颜色值的图片，则新建一张。
UIImage *shareImage = [UIImage cjmi_shareImageWithColor:[UIColor redColor]];
```

## Versions

- 0.1.0 新增图片缩放，图片染色，共享图片等接口。

## Requirements

## Installation

CJMImageCategory is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CJMImageCategory'
```

## Author

chenjm, cjiemin@163.com

## License

CJMImageCategory is available under the MIT license. See the LICENSE file for more info.
