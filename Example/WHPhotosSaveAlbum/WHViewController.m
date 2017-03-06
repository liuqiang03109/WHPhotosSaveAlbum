//
//  WHViewController.m
//  WHPhotosSaveAlbum
//
//  Created by wenhe-liu on 02/28/2017.
//  Copyright (c) 2017 wenhe-liu. All rights reserved.
//

#import "WHViewController.h"
#import <WHPhotosSaveAlbum/WHPhotoAlbumTool.h>



@interface WHViewController () <UIScrollViewDelegate>

@property (nonatomic, weak) UIScrollView *scrollView;
@property (nonatomic, weak) UIImageView *imageView;


@end

@implementation WHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = [UIScreen mainScreen].bounds;
    [self.view insertSubview:scrollView atIndex:0];
    self.scrollView = scrollView;
    
    // imageView
    UIImageView *imageView = [[UIImageView alloc] init];
    
    imageView.frame = scrollView.frame;
    imageView.image = [UIImage imageNamed:@"ting.jpeg"];
    
    [scrollView addSubview:imageView];
    self.imageView = imageView;
    
    //    // 图片缩放
    scrollView.maximumZoomScale = 2;
    scrollView.delegate = self;
    
}
- (IBAction)saveImage:(UIButton *)sender {
    //传一个image进去就可以将image保存到相册，并创建一个属于自己app的相簿
    [WHPhotoAlbumTool savePhotoToAlbum:self.imageView.image];
}


#pragma mark - <UIScrollViewDelegate>
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
