/*
 * UMFeedback
 *
 * Created by CZQ on 14-5-12.
 * Copyright (c) 2014年 czqsoft. All rights reserved.
*/

#import <Foundation/Foundation.h>
#import "FlashRuntimeExtensions.h"

#define ANE_FUNCTION(f) FREObject (f)(FREContext ctx, void *data, uint32_t argc, FREObject argv[])
#define MAP_FUNCTION(f, data) { (const uint8_t*)(#f), (data), &(f) }

void UMFeedbackExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet);

void UMFeedbackExtFinalizer(void* extData);

void UMFeedbackContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet);

void UMFeedbackContextFinalizer(FREContext ctx);

/* This is a sample function that is being included as part of this template. 
 *
 * Users of this template are expected to change this and add similar functions 
 * to be able to call the native functions in the ANE from their ActionScript code
*/
ANE_FUNCTION(um_feedback_init);
ANE_FUNCTION(um_feedback_open);


NSString * getStringFromFREObject(FREObject obj);
