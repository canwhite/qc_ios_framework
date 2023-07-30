//
//  MMKVManager.h
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMKVManager : NSObject
+ (instancetype)sharedInstance;

- (MMKV *)defaultMMKV;
@end

NS_ASSUME_NONNULL_END
