//
//  MMKVManager.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "MMKVManager.h"

@implementation MMKVManager
+ (instancetype)sharedInstance {
    static MMKVManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[MMKVManager alloc] init];
    });
    return sharedInstance;
}

- (MMKV *)defaultMMKV {
    static MMKV *kv = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *dir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        NSString *path = [dir stringByAppendingPathComponent:@"default"];
        kv = [MMKV mmkvWithID:path];
    });
    return kv;
}

/**
 MMKV *kv = [[MMKVManager sharedInstance] defaultMMKV];
 [kv setString:@"value" forKey:@"key"];
 NSString *value = [kv stringForKey:@"key"];

 */



@end
