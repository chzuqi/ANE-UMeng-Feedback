/*
 * UMFeedback.m
 * UMFeedback
 *
 * Created by CZQ on 14-5-12.
 * Copyright (c) 2014年 czqsoft. All rights reserved.
 */

#import "libUMFeedback.h"
#import <UIKit/UIKit.h>
#import "UMFeedback.h"
//#import "UMFeedbackViewController.h"

void UMFeedbackExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet) 
{
    *extDataToSet = NULL;
    *ctxInitializerToSet = &UMFeedbackContextInitializer;
    *ctxFinalizerToSet = &UMFeedbackContextFinalizer;
}

void UMFeedbackExtFinalizer(void* extData) 
{
    return;
}

void UMFeedbackContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet)
{
    static FRENamedFunction func[] = 
    {
        MAP_FUNCTION(um_feedback_init, NULL),
        MAP_FUNCTION(um_feedback_open, NULL),
    };
    
    *numFunctionsToTest = sizeof(func) / sizeof(FRENamedFunction);
    *functionsToSet = func;
}

void UMFeedbackContextFinalizer(FREContext ctx)
{
    return;
}

ANE_FUNCTION(um_feedback_init)
{
    
	return NULL;
}

ANE_FUNCTION(um_feedback_open)
{
    UIViewController *viewController = [[UIApplication sharedApplication]keyWindow].rootViewController;
    NSString *appkey = getStringFromFREObject(argv[0]);
    [UMFeedback showFeedback:viewController withAppkey:appkey];
	return NULL;
}

NSString * getStringFromFREObject(FREObject obj)
{
    uint32_t length;
    const uint8_t *value;
    FREGetObjectAsUTF8(obj, &length, &value);
    return [NSString stringWithUTF8String:(const char *)value];
}

