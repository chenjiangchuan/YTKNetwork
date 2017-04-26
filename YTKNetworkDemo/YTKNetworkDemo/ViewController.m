//
//  ViewController.m
//  YTKNetworkDemo
//
//  Created by chenjiangchuan on 2017/4/26.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "ViewController.h"
#import "LoginApi.h"
#import "LoginSuccessReformer.h"

@interface ViewController () <YTKRequestDelegate>

/** UIButton */
@property (strong, nonatomic) UIButton *button;
/** LoginSuccessReformer */
@property (strong, nonatomic) LoginSuccessReformer *reformer;

@end

@implementation ViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.button];
    [self layoutPageSubviews];
}

- (void)layoutPageSubviews {
    self.button.frame = CGRectMake(50, 50, 80, 30);
}

#pragma mark - Event Response

- (void)buttonAction:(UIButton *)button {
    LoginApi *loginApi = [[LoginApi alloc] initWithUsername:@"18190900909" password:@"123456" tick:@"1231413412" clientType:@"1" randomNumber:@"098324098"];
    loginApi.delegate = self;
    [loginApi start];
}

#pragma mark - YTKRequestDelegate

- (void)requestFinished:(__kindof YTKBaseRequest *)request {
    NSLog(@"%s", __FUNCTION__);
    // 获取到数据后进行处理
    NSDictionary *dictionary = [request fetchDataWithReformer:self.reformer];
    NSLog(@"dictionary = %@", dictionary);
}

- (void)requestFailed:(__kindof YTKBaseRequest *)request {
    NSLog(@"%s", __FUNCTION__);
}

#pragma mark - Lazy Initialze

- (UIButton *)button {
    if (_button == nil) {
        _button = [UIButton buttonWithType:UIButtonTypeSystem];
        [_button setTitle:@"click me" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

- (LoginSuccessReformer *)reformer {
    if (_reformer == nil) {
        _reformer = [[LoginSuccessReformer alloc] init];
    }
    return _reformer;
}

@end
