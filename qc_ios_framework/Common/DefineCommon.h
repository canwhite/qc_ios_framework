//
//  Common.h
//  qc_ios_framework
//
//  Created by zack on 2023/8/1.
//

#ifndef DefineCommon_h
#define DefineCommon_h

/* 宏定义，这里只能直接用，RAC有定义可以@调用的 */
#define weakSelf(var) __weak typeof(var) var##_weak_ = var;
#define strongSelf(var) __strong typeof(var) var = var##_weak_;


#pragma mark - 屏宽和屏高
#define ScreenW ([UIScreen mainScreen].bounds.size.width)
#define ScreenH ([UIScreen mainScreen].bounds.size.height)


//颜色
static inline UIColor *RGBA(int R, int G, int B, double A) {
    return [UIColor colorWithRed: R/255.0 green: G/255.0 blue: B/255.0 alpha: A];
}

static inline UIColor *HexColorA(int v, double A) {
    return RGBA((double)((v&0xff0000)>>16), (double)((v&0xff00)>>8), (double)(v&0xff), A);
}

static inline UIColor *HexColor(int v) {
    return RGBA((double)((v&0xff0000)>>16), (double)((v&0xff00)>>8), (double)(v&0xff), 1.0f);
}






#endif 
