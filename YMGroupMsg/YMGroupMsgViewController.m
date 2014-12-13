//
//  YMGroupMsgViewController.m
//  Tesdgd
//
//  Created by Yiming on 14/12/6.
//  Copyright (c) 2014年 Henizaiyiqi. All rights reserved.
//

#import "YMGroupMsgViewController.h"
#import "YMGroupMsgTextCell.h"
#import "YMGroupMsgImageCell.h"
#import "GroupMsgInfo.h"

@interface YMGroupMsgViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic) NSMutableArray *groupMsgsArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation YMGroupMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.groupMsgsArray = [[NSMutableArray alloc] init];
    
    GroupMsgInfo *msgInfo1 = [[GroupMsgInfo alloc] init];
    msgInfo1.time = @"2014年12月06号 15:56:37";
    msgInfo1.type = YMGroupMsgTypeText;
    msgInfo1.namesArray = @[@"糖尿病I型临床", @"渐冻人ALS", @"垂体瘤", @"库欣病", @"甲状腺疾病",@"爱笑综合征"];
    msgInfo1.contentText = @"恭祝你福寿与天齐，恭祝你生辰快乐。年年都有今日，碎碎都有今朝。恭祝你福寿与天齐，恭祝你生辰快乐。年年都有今日恭祝你福寿与天齐，恭祝你生辰快乐。年年都有今日恭祝你福寿与天齐，恭祝你生辰快乐。年年都有今日";
    [self.groupMsgsArray addObject:msgInfo1];
    
    GroupMsgInfo *msgInfo2 = [[GroupMsgInfo alloc] init];
    msgInfo2.time = @"2014年12月06号 15:56:37";
    msgInfo2.type = YMGroupMsgTypeImage;
    msgInfo2.namesArray = @[@"糖尿病I型临床", @"渐冻人ALS", @"垂体瘤", @"库欣病", @"甲状腺疾病",@"神经病"];
    [self.groupMsgsArray addObject:msgInfo2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *) cellForIndexPath:(NSIndexPath *) indexPath
{
    GroupMsgInfo *msgInfo = [self.groupMsgsArray objectAtIndex:indexPath.row];
    
    NSString *cellIdentityStr = @"TextCell";
    
    if (msgInfo.type == YMGroupMsgTypeText) {
        cellIdentityStr = @"TextCell";
    }else if(msgInfo.type == YMGroupMsgTypeImage){
        cellIdentityStr = @"ImageCell";
    }else if(msgInfo.type == YMGroupMsgTypeVoice){
        cellIdentityStr = @"VoiceCell";
    }
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentityStr];
    
    if ([cellIdentityStr isEqualToString:@"TextCell"]) {
        YMGroupMsgTextCell *textCell = (YMGroupMsgTextCell *)cell;
        textCell.timeLabel.text = msgInfo.time;
        textCell.groupKeyLabel.text = @"接收人(组)：";
        textCell.groupValueLabel.text = [msgInfo.namesArray componentsJoinedByString:@","];
        textCell.contentTextLabel.text = msgInfo.contentText;
    }else if([cellIdentityStr isEqualToString:@"ImageCell"]){
        YMGroupMsgImageCell *imageCell = (YMGroupMsgImageCell *)cell;
        imageCell.timeLabel.text = msgInfo.time;
        imageCell.groupKeyLabel.text = @"接收人(组)：";
        imageCell.groupValueLabel.text = [msgInfo.namesArray componentsJoinedByString:@","];//@"糖尿病I型临床, 渐冻人ALS, 垂体瘤, 库欣病, 甲状腺疾病";
        imageCell.contentImageView.image = [UIImage imageNamed:@"GroupContentImage.jpg"];
    }
    
    return cell;
}

#pragma mark -UITableViewDataSource UITableViewDelegate
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.groupMsgsArray.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self cellForIndexPath:indexPath];
    
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self cellForIndexPath:indexPath];
    CGSize size = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height + 1;
}

@end
