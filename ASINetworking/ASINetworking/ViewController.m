//
//  ViewController.m
//  ASINetworking
//
//  Created by ZhangYunguang on 15/11/23.
//  Copyright (c) 2015年 ZhangYunguang. All rights reserved.
//

#import "ViewController.h"
#import "ZYGASINetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    
    // 测试GET API
    NSString *url = @"/microservice/cityinfo?cityname=北京";
    
    [ZYGASINetworking GET_Path:url completed:^(id JSON, NSString *stringData) {
        NSLog(@"get测试成功");
    } failed:^(NSError *error) {
        NSLog(@"get测试失败");
    }];
    
    // 测试POST API：
    // 假数据
    NSDictionary *postDict = @{ @"urls": @[@"http://www.henishuo.com/git-use-inwork/",
                                           @"http://www.henishuo.com/ios-open-source-hybloopscrollview/"]
                                };
    NSString *path = @"/urls?site=www.henishuo.com&token=bRidefmXoNxIi3Jp";
    // 由于这里有两套基础路径，用时就需要更新
    [ZYGASINetworking updateBaseUrl:@"http://data.zz.baidu.com"];
    [ZYGASINetworking POST_Path:path params:postDict completed:^(id JSON, NSString *stringData) {
        NSLog(@"post测试成功");
        
    } failed:^(NSError *error) {
        NSLog(@"post测试失败");
    }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
