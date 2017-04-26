//
//  LoginSuccessReformer.h
//  Pods
//
//  Created by chenjiangchuan on 2017/3/28.
//
//

#import <Foundation/Foundation.h>
#import <QMYTKNetwork/YTKNetwork.h>

@interface LoginSuccessReformer : NSObject<YTKRequestDataReformer>

- (void)saveSuccessDataUserDefaults:(NSDictionary *)data;

@end
