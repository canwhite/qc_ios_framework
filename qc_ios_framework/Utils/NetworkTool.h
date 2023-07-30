//
//  NetworkTool.h
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkTool : AFHTTPSessionManager
//instancetype 是一个编译时类型安全的关键字，做自动推断，+定义类方法，-定义实例方法
+ (instancetype)sharedInstance;

- (void)get:(NSString *)urlString
    parameters:(nullable NSDictionary *)parameters
    success:(void (^)(id responseObject))success
    failure:(void (^)(NSError *error))failure;

- (void)post:(NSString *)urlString
    parameters:(nullable NSDictionary *)parameters
    success:(void (^)(id responseObject))success
    failure:(void (^)(NSError *error))failure;

@end


NS_ASSUME_NONNULL_END
