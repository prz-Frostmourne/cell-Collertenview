//
//  TableViewController.m
//  cell中Collertenview
//
//  Created by xiantian on 15/12/30.
//  Copyright © 2015年 xiantian. All rights reserved.
//

#import "TableViewController.h"
#import "PRZCollectionViewCell.h"
#import "PRZTableViewCell.h"

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width

@interface TableViewController ()
@property (nonatomic) CGFloat cellWidth;
@property (nonatomic) CGFloat padding;
@property (nonatomic,strong)NSDictionary *dict;
@property (nonatomic,strong)NSArray *imagearray;
@property (nonatomic,strong)NSArray *titlearray;
@property (nonatomic,strong)NSArray *baguenumberarray;

@property (nonatomic,strong)NSString *mystring;
@property (nonatomic,strong)NSString *mystringthree;
@property (nonatomic,strong)NSString *mystringtwo;
@property (nonatomic,strong)NSString *mystringfour;
@property (nonatomic,strong)NSString *mystringfifth;
@property (nonatomic,strong)NSString *mystringsix;
@property (nonatomic,strong)NSString *mystringseven;
@property  BOOL    mybool;

@end

@implementation TableViewController

static NSString * const reuseIdentifier = @"PRZCollectionViewCell";


- (void)viewDidLoad {
    [super viewDidLoad];
    _padding = 10;
    _cellWidth = (SCREEN_WIDTH - 6 * _padding) / 4;
    self.titlearray = @[@"公告",@"工作报告",@"审批",@"考勤打卡",@"我要理财",@"移动CRM",@"更多"];
    self.imagearray = @[@"work-bg_12",@"work-bg_14",@"work-bg_16",@"work-bg_21",@"work_03",@"work_05",@"more"];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PRZTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRZTableViewCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 7;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PRZCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PRZCollectionViewCell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor ];
    cell.Plabel.text = self.titlearray[indexPath.row];
    cell.Pimageview.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",self.imagearray[indexPath.row]]];
//    cell.badgenumber.text=self.baguenumberarray[indexPath.row];
//    cell.badgenumber.layer.cornerRadius =  cell.badgenumber.bounds.size.width*0.5;
//    cell.badgenumber.layer.masksToBounds= YES;
//    cell.badgenumber.clipsToBounds = YES;
//    
//    if ([cell.badgenumber.text isEqualToString:@""]) {
//        
//        cell.badgenumber.hidden =YES;
//        
//    }else{
//        
//        cell.badgenumber.hidden =NO;
//    }
    return cell;
}


/**
 * 改变Cell的尺寸
 */
- (CGSize)collectionView: (UICollectionView *)collectionView
                  layout: (UICollectionViewLayout*)collectionViewLayout
  sizeForItemAtIndexPath: (NSIndexPath *)indexPath{
    
    
    return CGSizeMake(_cellWidth, _cellWidth+15);
}


/**
 * Section的上下左右边距--UIEdgeInsetsMake(上, 左, 下, 右);逆时针
 */
- (UIEdgeInsets)collectionView: (UICollectionView *)collectionView
                        layout: (UICollectionViewLayout*)collectionViewLayout
        insetForSectionAtIndex: (NSInteger)section{
    
    return UIEdgeInsetsMake(10, 10, 10, 10);
}

/**
 * Section中每个Cell的上下边距
 */
- (CGFloat)collectionView: (UICollectionView *)collectionView
                   layout: (UICollectionViewLayout*)collectionViewLayout
minimumLineSpacingForSectionAtIndex: (NSInteger)section{
    
    return 10.0f;
}

/**
 * Section中每个Cell的左右边距
 */
- (CGFloat)collectionView: (UICollectionView *)collectionView
                   layout: (UICollectionViewLayout*)collectionViewLayout
minimumInteritemSpacingForSectionAtIndex: (NSInteger)section{
    
    return 10.0f;
}

-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    
    //    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
//    
//    if (indexPath.row ==0) {
//        self.mystring =@"77";
//        
//    } else if (indexPath.row ==1) {
//        self.mystringtwo =@"66";
//        
//    }else if (indexPath.row ==2){
//        self.mystringthree =@"55";
//        
//    }else if (indexPath.row ==3){
//        self.mystringfour=@"44";
//    }else if (indexPath.row ==4){
//        
//        self.mystringfifth =@"33";
//    }else if (indexPath.row ==5){
//        
//        self.mystringsix=@"22";
//    }else if (indexPath.row ==6){
//        self.mystringseven =@"11";
//    }else{
//        return;
//    }
//    self.baguenumberarray =@[self.mystring,self.mystringtwo,self.mystringthree,self.mystringfour,self.mystringfifth,self.mystringsix ,self.mystringseven];
//    
//    [self.collectionview  reloadData ];
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
