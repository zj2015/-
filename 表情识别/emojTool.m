//
//  emojTool.m
//  表情识别
//
//  Created by 张杰 on 15/10/31.
//  Copyright © 2015年 ZJ. All rights reserved.
//

#import "emojTool.h"
#import "RegexKitLite.h"
#import "resultMode.h"
#import "replaceTool.h"
#import "ZJattachment.h"

@interface emojTool()

@property (nonatomic, strong) NSMutableArray *arr;

@end

@implementation emojTool

- (NSMutableArray *)arr
{
    if (_arr) {
        
        _arr = [NSMutableArray array];
        
    }
    return _arr;
}

- (NSAttributedString *)getattributesting:(NSString *)text
{
    
    NSString *regex = @"\\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]";
    [text enumerateStringsMatchedByRegex:regex usingBlock:^(NSInteger captureCount, NSString *const __unsafe_unretained *capturedStrings, const NSRange *capturedRanges, volatile BOOL *const stop) {
        
        resultMode *result = [[resultMode alloc]init];
        result.emoij = YES;
        result.string = *capturedStrings;
        result.range = *capturedRanges;
        [self.arr addObject:result];
        
    }];
    
    [text enumerateStringsSeparatedByRegex:regex usingBlock:^(NSInteger captureCount, NSString *const __unsafe_unretained *capturedStrings, const NSRange *capturedRanges, volatile BOOL *const stop) {
        
        resultMode *mode = [[resultMode alloc]init];
        mode.range = *capturedRanges;
        mode.emoij = NO;
        mode.string = *capturedStrings;
        [self.arr addObject:mode];
    }];
   
    [self.arr sortUsingComparator:^NSComparisonResult(resultMode *obj1, resultMode *obj2) {
        
        int loc1 = obj1.range.location;
        int loc2 = obj2.range.location;
        
        return [@(loc1) compare:@(loc1)];
    }];
    
    
    NSMutableAttributedString *string;
    for (resultMode *mode in self.arr) {
    
        if (mode.emoij) {
            
            NSString *imagename = [replaceTool chineseFaceStringReplacedByFaceName:mode.string];
            
            ZJattachment *attach = [[ZJattachment alloc]init];
            attach.image = [UIImage imageNamed:imagename];
            attach.imagename = imagename;
            attach.imagetext = mode.string;
            
            [string appendAttributedString:[NSAttributedString attributedStringWithAttachment:attach]];
            
        }else{
        
            NSString *str = [text substringWithRange:mode.range];
            
            [string appendAttributedString:[[NSAttributedString alloc]initWithString:str]];
        }
    }
    
    return string;
}

- (NSString *)getstring:(NSAttributedString *)str
{
    NSMutableString *new = [NSMutableString string];
    NSRange range = NSMakeRange(0, str.length);
    [str enumerateAttributesInRange:range options:0 usingBlock:^(NSDictionary<NSString *,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
        
        ZJattachment *attach = attrs[@"NSAttachment"];
        if (attrs) {
            
            [new appendString:attach.imagetext];
            
        }else{
        
            [new appendString:[str attributedSubstringFromRange:range].string];
        }
        
    }];
    
    return new;
}
@end
