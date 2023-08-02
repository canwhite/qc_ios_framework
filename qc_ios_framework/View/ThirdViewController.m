//
//  ThirdViewController.m
//  qc_ios_framework
//
//  Created by zack on 2023/8/2.
//

#import "ThirdViewController.h"
#import "MineCollectionViewCell.h"

@interface ThirdViewController ()< UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property(nonatomic,strong) NSMutableArray *imageArr ;
@property(nonatomic,strong) UICollectionView *collectionView;//

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"测试";
    
    //初始化一下数据
    [self initData];
    
    //添加
    [self.view addSubview:self.collectionView];
    self.collectionView.backgroundColor = RGBA(242, 242, 242, 1);
    
}

-(void)initData{
    NSMutableArray *arr1 = [NSMutableArray new];
    NSMutableArray *arr2 = [NSMutableArray arrayWithObjects:@"touxiang",@"touxiang", nil];
    self.imageArr  = [NSMutableArray new];
    [self.imageArr addObject:arr1];
    [self.imageArr addObject:arr2];
    [self.imageArr addObject:arr1];
    [self.imageArr addObject:arr2];
}


//懒加载
-(UICollectionView *)collectionView{
    if(!_collectionView){
        
        //设置布局
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0,0, ScreenW, ScreenH) collectionViewLayout:flowLayout];
        
        //定义每个UICollectionView zong向的间距
        flowLayout.minimumLineSpacing = 10;
        //定义每个UICollectionView heng向的间距
        flowLayout.minimumInteritemSpacing = 0;
        
        //注册cell
        NSArray *cellclassArr = @[[MineCollectionViewCell class]];
        NSArray *reuseID = @[@"cell1"];
        
        for (int i = 0; i<reuseID.count; i++) {
            [_collectionView registerClass:cellclassArr[i] forCellWithReuseIdentifier:reuseID[i]];
        }
        
        //注册头部
        [_collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ReusableView"];

        //设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        
        
        //_collectionView.delaysContentTouches = NO;
        
        //背景颜色
        _collectionView.backgroundColor = [UIColor whiteColor];
        //自适应大小
        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        
    }
    return  _collectionView;
}

#pragma mark - dataSource
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return  self.imageArr.count;
    
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString  *identify = @"cell1";
    MineCollectionViewCell *cell1 = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
    cell1.imageArr = self.imageArr[indexPath.row];
    return cell1;
}


#pragma mark - delegate

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@", [NSString stringWithFormat:@"%@",indexPath]);
    
}


#pragma mark - UICollectionViewDelegateFlowLayout
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    
    return  UIEdgeInsetsMake(0,0,0,0);
    
}
//这个设置每个item的形状大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray * arr = self.imageArr[indexPath.row];
    if (arr.count > 0) {
        return  CGSizeMake(ScreenW, 195);
    }else{
        return  CGSizeMake(ScreenW, 115);
    }
}




@end
