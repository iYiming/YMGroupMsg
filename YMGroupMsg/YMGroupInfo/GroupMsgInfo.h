//
//  GroupMsgInfo.h
//  Tesdgd
//
//  Created by Yiming on 14/12/6.
//  Copyright (c) 2014年 Henizaiyiqi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    YMGroupMsgTypeText,
    YMGroupMsgTypeImage,
    YMGroupMsgTypeVoice
} YMGroupMsgType;

@interface GroupMsgInfo : NSObject

@property (nonatomic,strong) NSArray *namesArray;
@property (nonatomic,strong) NSString *contentText;
@property (nonatomic,assign) YMGroupMsgType type;
@property (nonatomic,strong) NSString *time;



@end
