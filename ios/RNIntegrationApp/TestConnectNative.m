//
//  TestConnectNative.m
//  RNIntegrationApp
//
//  Created by Алексей Дрождев on 20.09.2023.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_REMAP_MODULE(TestConnectNative, TestConnectNativeModule, NSObject)

RCT_EXTERN_METHOD(sendMessageToNative: (NSString)rnMessage)
RCT_EXTERN_METHOD(dismissViewController: (nonnull NSNumber *)reactTag)

@end
