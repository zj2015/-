//
//  replaceTool.m
//  表情识别
//
//  Created by 张杰 on 15/10/31.
//  Copyright © 2015年 ZJ. All rights reserved.
//

#import "replaceTool.h"

@implementation replaceTool

+ (NSString*)chineseFaceStringReplacedByFaceName:(NSString*)chineseFaceString{
    NSString* img=chineseFaceString;
    
    img= [img stringByReplacingOccurrencesOfString:@"[发呆]" withString:@"face1.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[无奈]" withString:@"face2.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[坏笑]" withString:@"face3.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[撇嘴]" withString:@"face4.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[可爱]" withString:@"face5.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[得意]" withString:@"face6.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[晕]" withString:@"face7.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[大哭]" withString:@"face8.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[衰]" withString:@"face9.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[难过]" withString:@"face10.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[微笑]" withString:@"face11.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[傻笑]" withString:@"face12.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[愤怒]" withString:@"face13.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[酷]" withString:@"face14.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[汗]" withString:@"face15.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[惊讶]" withString:@"face16.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[鼻涕]" withString:@"face17.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[美女]" withString:@"face18.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[帅哥]" withString:@"face19.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[流泪]" withString:@"face20.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[囧]" withString:@"face21.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[生气]" withString:@"face22.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[雷人]" withString:@"face23.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[吓]" withString:@"face24.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[大笑]" withString:@"face25.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[吐]" withString:@"face26.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[尴尬]" withString:@"face27.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[感动]" withString:@"face28.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[纠结]" withString:@"face29.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[宠物]" withString:@"face30.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[睡觉]" withString:@"face31.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[奋斗]" withString:@"face32.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[左哼]" withString:@"face33.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[右哼]" withString:@"face34.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[崩溃]" withString:@"face35.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[委屈]" withString:@"face36.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[疑问]" withString:@"face37.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[太棒了]" withString:@"face38.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[鄙视]" withString:@"face39.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[打哈欠]" withString:@"face40.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[无语]" withString:@"face41.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[亲亲]" withString:@"face42.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[恐惧]" withString:@"face43.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[骷髅]" withString:@"face44.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[俏皮]" withString:@"face45.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[爱财]" withString:@"face46.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[海盗]" withString:@"face47.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[难受]" withString:@"face48.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[思考]" withString:@"face49.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[感冒]" withString:@"face50.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[闭嘴]" withString:@"face51.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[菜刀]" withString:@"face52.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[礼物]" withString:@"face53.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[药水]" withString:@"face54.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[雨天]" withString:@"face55.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[砸]" withString:@"face56.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[炸弹]" withString:@"face57.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[胜利]" withString:@"face58.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[发飙]" withString:@"face59.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[喜欢]" withString:@"face60.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[不错]" withString:@"face61.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[大爱]" withString:@"face62.png"] ;
    img= [img stringByReplacingOccurrencesOfString:@"[仰慕]" withString:@"face63.png"] ;
    //替换回车占位符
    img= [img stringByReplacingOccurrencesOfString:@"\n" withString:@" "] ;
    img= [img stringByReplacingOccurrencesOfString:@"\r" withString:@" "] ;
    //替换  &  这个符号
    img= [img stringByReplacingOccurrencesOfString:@"&" withString:@" "] ;
    return img;
}



@end
