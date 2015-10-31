//
//  resultMode.h
//  表情识别
//
//  Created by 张杰 on 15/10/31.
//  Copyright © 2015年 ZJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface resultMode : NSObject

@property (nonatomic, assign) BOOL emoij;
@property (nonatomic, copy) NSString *string;
@property (nonatomic, assign)NSRange range;

@end
