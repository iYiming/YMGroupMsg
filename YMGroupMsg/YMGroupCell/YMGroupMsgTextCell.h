//
//  YMGroupMsgTextCell.h
//  Tesdgd
//
//  Created by Yiming on 14/12/6.
//  Copyright (c) 2014年 Henizaiyiqi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YMGroupMsgTextCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;//时间
@property (weak, nonatomic) IBOutlet UILabel *groupKeyLabel;//
@property (weak, nonatomic) IBOutlet UILabel *groupValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentTextLabel;

@end
