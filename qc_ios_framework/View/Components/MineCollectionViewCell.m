//
//  MineCollectionViewCell.m
//  qc_ios_framework
//
//  Created by zack on 2023/8/2.
//

#import "MineCollectionViewCell.h"

@implementation MineCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    //继承方法，先实现父类的
    self =  [super initWithFrame:frame];
    if(self){
        [self initView];
    }
    return  self;
}

//初始化界面
-(void)initView{
    self.backgroundColor = [UIColor whiteColor];
    
    //imageView是给image提供一个容器
    self.imageView = [UIImageView new];
    [self addSubview:self.imageView];
    self.imageView.sd_layout
    .leftSpaceToView(self, 20)
    .topSpaceToView(self, 10)
    .widthIs(30)
    .heightIs(30);
    [self.imageView setImage:[UIImage imageNamed:@"touxiang"]];
    
    //name,time,content
    //nameLabel和imageView平齐
    self.nameLabel = [UILabel new];
    [self addSubview:self.nameLabel];
    self.nameLabel.sd_layout
    .leftSpaceToView(self.imageView, 3)
    .topEqualToView(self.imageView)//和space区分，这个是等同，space是相对
    .autoWidthRatio(0)
    .autoHeightRatio(0);
    self.nameLabel.text = @"张三";
    self.nameLabel.font = [UIFont systemFontOfSize:13];
    
    
    
    //time
    
    self.timeLabel = [UILabel new];
    [self addSubview:self.timeLabel];
    self.timeLabel.sd_layout
    .leftSpaceToView(self.imageView, 2)
    .widthIs(120)
    .heightIs(13)
    .topSpaceToView(self.nameLabel, 6);
    self.timeLabel.font = [UIFont systemFontOfSize:11];
    self.timeLabel.textColor = RGBA(159, 159, 159, 1);
    self.timeLabel.text = @"一天前";
    
    //content
    
    self.contentLabel = [UILabel new];
    [self addSubview:self.contentLabel];
    self.contentLabel.sd_layout
    .leftSpaceToView(self, 20)
    .topSpaceToView(self.imageView, 12)
    .widthIs(self.frame.size.width-20)
    .heightIs(53);
    self.contentLabel.font = [UIFont systemFontOfSize:13];
    self.contentLabel.text = @"二楼的包子实在是太好吃了,接下来是测试啊额头极光 i 哦二极管 i 哦耳机归哦二哥 i 儿古鳄日 ogre的官方公开了的风格";
    //表可换行
    self.contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.contentLabel.numberOfLines = 3;
    
    
    //默认imgView的Frame为Zero
    self.imgView = [[UIView alloc]initWithFrame:CGRectZero];
    [self addSubview:self.imgView];
    
    
}


-(void)setImageArr:(NSMutableArray *)imageArr{
    
    _imageArr = imageArr;
    
    CGFloat setX = 20;
    CGFloat setY = 0;
    
    
    //如果有图片数据
    if (_imageArr.count > 0) {
        
        //给imgView设置Frame
        self.imgView.frame = CGRectMake(0, 115, self.frame.size.width, 70);
        
        
        //imgView如果有子view就清除一下
        if (self.imgView.subviews.count > 0) {
            for (UIView *view in self.imgView.subviews) {
                [view removeFromSuperview];
            }
        }
        
        
        //通过for循环往imgView上添加内容
        for (int i =0; i<_imageArr.count; i++) {
            
            if (i == 4) {
                break;
            }
            
            UIImageView * view = [[UIImageView alloc]initWithFrame:CGRectMake(setX, setY,(self.frame.size.width -100)/4, 70)];
            [view setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",_imageArr[i]]]];
            [self.imgView addSubview:view];
            setX += view.bounds.size.width + 20;
        }
    }
    //如果没有图片数据
    else{
        
        self.imgView.frame = CGRectZero;
        
    }
    
}



@end
