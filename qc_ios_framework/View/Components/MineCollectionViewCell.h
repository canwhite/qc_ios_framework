//
//  MineCollectionViewCell.h
//  qc_ios_framework
//
//  Created by zack on 2023/8/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MineCollectionViewCell : UICollectionViewCell

@property(nonatomic,strong) UIImageView * imageView;
@property(nonatomic,strong) UILabel * nameLabel;
@property(nonatomic,strong) UILabel * timeLabel;
@property(nonatomic,strong) UILabel * contentLabel;

//--
@property(nonatomic,strong) NSMutableArray * imageArr;
@property(nonatomic,strong) UIView * imgView;



@end

NS_ASSUME_NONNULL_END
