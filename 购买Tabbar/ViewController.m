//
//  ViewController.m
//  购买Tabbar
//
//  Created by BBC on 15/11/16.
//  Copyright (c) 2015年 陈伟滨. All rights reserved.
//

#import "ViewController.h"
#import "BBCShopBar.h"
#import "UIViewExt.h"
#import "KxMenu.h"
@interface ViewController ()<BBCShopBarDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];

//我在测试，你在想什么么呢



    float a= 2;
    float b = 3;
    a = 10/2 * b;
    NSLog(@"%f",a);


    a = (40+(2+1-2)/2) * (b - 1) + b;

    NSLog(@"%f",a);

    BBCShopBar * shopbar = [[BBCShopBar alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 50)];
    shopbar.delegate = self;
//    shopbar
    [self.view addSubview:shopbar];




//    NSURL * myURL_APP_A = [NSURL URLWithString:@"testHello://"];
//    if ([[UIApplication sharedApplication] canOpenURL:myURL_APP_A]) {
//        NSLog(@"canOpenURL");
//        [[UIApplication sharedApplication] openURL:myURL_APP_A];
//    }

}

-(void)clickOne:(UIButton *)sender
{
    NSLog(@" 最终的结果  ======   ");
}


-(void)ShopBarButtonClick:(UIButton *)sender
{
    NSLog(@" 最终的结果   %ld",(long)sender.tag);

    NSArray *menuItems =
    @[

      [KxMenuItem menuItem:@"  编  辑  "
                     image:nil
                    target:self
                    action:@selector(clickOne:)],

      [KxMenuItem menuItem:@"  删  除  "
                     image:nil
                    target:self
                    action:@selector(clickOne:)],

      [KxMenuItem menuItem:@"  取  消  "
                     image:nil
                    target:self
                    action:@selector(clickOne:)],

      ];

    [KxMenu showMenuInView:self.view
                  fromRect:self.view.frame
                 menuItems:menuItems];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
