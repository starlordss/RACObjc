//
//  RedView.m
//  RACObjc
//
//  Created by Zahi on 2017/7/22.
//  Copyright © 2017年 Zahi. All rights reserved.
//

#import "RedView.h"

@implementation RedView

- (RACSubject *)btnClickSignal
{
    if (_btnClickSignal == nil) {
        
        _btnClickSignal = [RACSubject subject];
    }
    
    return _btnClickSignal;
}

- (IBAction)btnClick:(id)sender {
    
    // 通知控制器处理
    [self.btnClickSignal sendNext:@"按钮被点击"];
    
}

@end
