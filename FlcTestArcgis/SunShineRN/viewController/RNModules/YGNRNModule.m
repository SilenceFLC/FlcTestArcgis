//
//  YGNRNModule.m
//  SunShineRN
//
//  Created by 冯立昌 on 2019/12/26.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "YGNRNModule.h"
#import "NSObject+XKController.h"
#import "YGNStandardTaskViewController.h"
@implementation YGNRNModule
RCT_EXPORT_MODULE()

/// 跳转到原生验标地图页面
RCT_EXPORT_METHOD(jumpToIosStandardTaskPage:(NSDictionary*)params){
    
    NSLog(@"原生接收到的参数%@",params);
    dispatch_async(dispatch_get_main_queue(), ^{
        YGNStandardTaskViewController *standardVC = [[YGNStandardTaskViewController alloc] init];
//        uploadPhotoVC.samplePointId  =   ((NSNumber*)params[@"samplePointId"]).intValue;
//        uploadPhotoVC.taskId = ((NSNumber*)params[@"taskId"]).intValue;;
//        uploadPhotoVC.policyNumber = params[@"policyNumber"];
//        uploadPhotoVC.drawAreas = @[];
//        uploadPhotoVC.address = @"";
        [self.getCurrentUIVC.navigationController  pushViewController:standardVC animated:YES];
//      [self.getCurrentUIVC  presentViewController:standardVC animated:YES completion:^{
//
//      }];
    });
}




@end
