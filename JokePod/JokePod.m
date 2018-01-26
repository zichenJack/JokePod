//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  JokePod.m
//  JokePod
//
//  Created by 姚天成 on 2018/1/26.
//  Copyright (c) 2018年 姚天成. All rights reserved.
//

#import "JokePod.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>

CHDeclareClass(EssayTipCellImage)
CHDeclareClass(EssayDetailTipCellViewImage)
CHDeclareClass(EssayRecommendActivityCell)

CHMethod2(double, EssayTipCellImage, heightForTipModel, id, arg1, cellWidth, double, arg2)
{
    return 0.0;
}

CHMethod0(id, EssayTipCellImage, createCellView){

    return nil;
}

CHMethod2(id, EssayDetailTipCellViewImage, initWithStyle, id, arg1, reuseIdentifier, id, arg2){
    return nil;
}

CHMethod2(double, EssayDetailTipCellViewImage, heightForTipModel, id, arg1, cellWidth, double, arg2)
{
    return 0.0;
}

CHMethod3(double, EssayDetailTipCellViewImage, heightForContentOfTipModel, id, arg1, cellWidth, id, arg2, fontSize, double, arg3)
{
    return 0.0;
}

CHMethod1(id, EssayRecommendActivityCell, getSummaryParagraphStyleDic, id, arg1){

    return nil;
}

CHMethod1(double, EssayRecommendActivityCell, summeryHeightWithActivitySummery, id, arg1){

    return 0;
}

CHMethod1(double, EssayRecommendActivityCell, imageHeightWithRecommendActivityModel, id, arg1){

    return 0;
}

CHMethod1(double, EssayRecommendActivityCell, heightWithRecommendActivityModel, id, arg1){

    return 0;
}

CHMethod2(id, EssayRecommendActivityCell, initWithStyle, id, arg1, reuseIdentifier, double, arg2)
{
    return nil;
}

//参数的个数，返回值的类型，类的名称，selector的名称，selector的类型，selector对应的参数的变量名
CHConstructor
{
    @autoreleasepool
    {
        CHLoadLateClass(EssayTipCellImage);
        CHLoadLateClass(EssayDetailTipCellViewImage);
        CHClassHook2(EssayTipCellImage, heightForTipModel, cellWidth);
        CHClassHook0(EssayTipCellImage, createCellView);
        CHClassHook2(EssayDetailTipCellViewImage, initWithStyle, reuseIdentifier);
        CHClassHook2(EssayDetailTipCellViewImage, heightForTipModel, cellWidth);
        CHClassHook3(EssayDetailTipCellViewImage, heightForContentOfTipModel, cellWidth, fontSize);

        CHClassHook1(EssayRecommendActivityCell, getSummaryParagraphStyleDic);
        CHClassHook1(EssayRecommendActivityCell, summeryHeightWithActivitySummery);
        CHClassHook1(EssayRecommendActivityCell, imageHeightWithRecommendActivityModel);
        CHClassHook1(EssayRecommendActivityCell, heightWithRecommendActivityModel);
    }
}
