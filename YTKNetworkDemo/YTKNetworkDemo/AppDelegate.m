//
//  AppDelegate.m
//  YTKNetworkDemo
//
//  Created by chenjiangchuan on 2017/4/26.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "AppDelegate.h"
#import "YTKNetwork/YTKNetwork.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.baseUrl = @"https://api.sayee.cn:28084";
    
    return YES;
}

@end
