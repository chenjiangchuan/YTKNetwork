//
//  LoginApi.m
//  YTKNetworkDemo
//
//  Created by chenjiangchuan on 2017/4/26.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "LoginApi.h"

@implementation LoginApi
{
    NSString *_username;
    NSString *_password;
    NSString *_tick;
    NSString *_clientType;
}

- (instancetype)initWithUsername:(NSString *)username
                        password:(NSString *)password
                            tick:(NSString *)tick
                      clientType:(NSString *)clientType
                    randomNumber:(NSString *)randomNumber {
    self = [super init];
    if (self) {
        _username = username;
        _password = password;
        _tick = tick;
        _clientType = clientType;
    }
    return self;
}

- (NSString *)requestUrl {
    return @"/user/login.json";
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodPOST;
}

- (id)requestArgument {
    return @{
             @"username": _username,
             @"tick": _tick,
             @"password": _password,
             @"client_type": _clientType
             };
}

- (NSDictionary<NSString *,NSString *> *)requestHeaderFieldValueDictionary {
    return @{
             @"uuid": @"123",
             @"username": _username
             };
}

@end
