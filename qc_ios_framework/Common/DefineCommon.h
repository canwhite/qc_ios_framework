//
//  Common.h
//  qc_ios_framework
//
//  Created by zack on 2023/8/1.
//

#ifndef DefineCommon_h
#define DefineCommon_h

/* 宏定义，这里只能直接用，RAC有定义可以@调用的 */
#define weakS(var) __weak typeof(var) var##_weak_ = var;
#define strongS(var) __strong typeof(var) var = var##_weak_;

#endif 
