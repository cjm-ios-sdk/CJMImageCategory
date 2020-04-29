//
//  CJMViewController.m
//  CJMImageCategory
//
//  Created by chenjm on 04/29/2020.
//  Copyright (c) 2020 chenjm. All rights reserved.
//

#import "CJMViewController.h"
#import <CJMImageCategory/CJMImageCategory.h>

@interface CJMViewController ()

@end

@implementation CJMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"image.png"];
    UIImage *resizeImage = [image cjmi_resizeImageWithScale:0.5];
    NSLog(@"image=%@, resizeImage=%@", image, resizeImage);
    
    UIImage *tintImage = [image cjmi_tintImageWithColor:[UIColor redColor]];
    
    UIImage *tintColorImage = [UIImage cjmi_tintImageWithColor:[UIColor redColor] size:CGSizeMake(10, 10)
                                                         scale:1];
    
    UIImage *shareImage = [UIImage cjmi_shareImageWithColor:[UIColor redColor]];
    
    
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.view addSubview:imageView];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    imageView.backgroundColor = [UIColor redColor];
    
    [NSLayoutConstraint activateConstraints:@[
        [imageView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:30],
        [imageView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:30],
    ]];
    
    UIImageView *resizeImageView = [[UIImageView alloc] initWithImage:resizeImage];
    [self.view addSubview:resizeImageView];
    resizeImageView.translatesAutoresizingMaskIntoConstraints = NO;
    resizeImageView.backgroundColor = [UIColor redColor];
    
    [NSLayoutConstraint activateConstraints:@[
        [resizeImageView.topAnchor constraintEqualToAnchor:imageView.bottomAnchor constant:30],
        [resizeImageView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:30]
    ]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
