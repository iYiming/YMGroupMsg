//
//  YMGroupMsgTextCell.m
//  Tesdgd
//
//  Created by Yiming on 14/12/6.
//  Copyright (c) 2014年 Henizaiyiqi. All rights reserved.
//

#import "YMGroupMsgTextCell.h"

//屏幕宽度
#define kScreenWidth CGRectGetWidth([[UIScreen mainScreen] bounds])
//屏幕高度
#define kScreenHeight CGRectGetHeight([[UIScreen mainScreen] bounds])

@implementation YMGroupMsgTextCell

- (void)awakeFromNib {
    // Initialization code
    self.groupValueLabel.preferredMaxLayoutWidth = kScreenWidth - 30;
    self.contentTextLabel.preferredMaxLayoutWidth = kScreenWidth - 30;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
