//
//  LoginApi.h
//  YTKNetworkDemo
//
//  Created by chenjiangchuan on 2017/4/26.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "YTKRequest.h"

@interface LoginApi : YTKRequest

- (instancetype)initWithUsername:(NSString *)username
                        password:(NSString *)password
                            tick:(NSString *)tick
                      clientType:(NSString *)clientType
                    randomNumber:(NSString *)randomNumber;

@end
