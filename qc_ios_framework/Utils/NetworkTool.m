//
//  NetworkTool.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "NetworkTool.h"

@implementation NetworkTool

+ (instancetype)sharedInstance {
    static NetworkTool *instance;
    static dispatch_once_t onceToken;
    //GCD函数，生成单例
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] initWithBaseURL:nil];
        // 设置请求格式为JSON
        instance.requestSerializer = [AFJSONRequestSerializer serializer];
        // 设置响应格式为JSON
        instance.responseSerializer = [AFJSONResponseSerializer serializer];
        // 设置超时时间为15秒
        instance.requestSerializer.timeoutInterval = 15;
        // 设置可接受的响应类型
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    });
    return instance;
}

// GET请求
- (void)get:(NSString *)urlString
parameters:(nullable NSDictionary *)parameters
success:(void (^)(id responseObject))success
failure:(void (^)(NSError *error))failure {
    
    // 调用父类的GET方法，传入参数和回调
    [self GET:urlString parameters:parameters headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        // 如果成功，执行success回调
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        // 如果失败，执行failure回调
        if (failure) {
            failure(error);
        }
    }];
}

// POST请求
- (void)post:(NSString *)urlString
parameters:(nullable NSDictionary *)parameters
success:(void (^)(id responseObject))success
failure:(void (^)(NSError *error))failure {
    
    // 调用父类的POST方法，传入参数和回调
    [self POST:urlString parameters:parameters headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        // 如果成功，执行success回调
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        // 如果失败，执行failure回调
        if (failure) {
            failure(error);
        }
    }];
}

/***************************************************************************************
 使用：
 // ViewController.m
 #import "ViewController.h"
 #import "NetworkTool.h"

 @interface ViewController ()

 @end

 @implementation ViewController

 - (void)viewDidLoad {
     [super viewDidLoad];
     
     // 使用NetworkTool单例发送GET请求
     [[NetworkTool sharedInstance] GET:@"https://api.github.com/users" parameters:nil success:^(id responseObject) {
         // 处理成功返回的结果
         NSLog(@"responseObject: %@", responseObject);
     } failure:^(NSError *error) {
         // 处理失败返回的错误
         NSLog(@"error: %@", error);
     }];
 }

 @end


 */


@end


