//
//  ViewController.m
//  YMeng_Share
//
//  Created by JJetGu on 15/7/5.
//  Copyright (c) 2015年 JJetGu. All rights reserved.
//

#import "ViewController.h"
#import "UMSocial.h"
#import "UMSocialSinaHandler.h"

@interface ViewController ()<UMSocialDataDelegate,UMSocialUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    //       http://www.umeng.com/    官方网站
    
    //注意：分享到微信好友、微信朋友圈、微信收藏、QQ空间、QQ好友、来往好友、来往朋友圈、易信好友、易信朋友圈、Facebook、Twitter、Instagram等平台需要参考各自的集成方法
    
    /*
     SheetView: 需要在哪个视图中展示
     appKey: 当前应用的友盟分享的key
     shareText: 需要分享的文本
     shareImage: 需要分享的图片
     shareToSnsNames: 需要分享到的平台
     */
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:@"55949fa767e58e3ee2001ba0"
                                      shareText:@"你要分享的文字"
                                     shareImage:[UIImage imageNamed:@"icon.png"]
                                shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToTencent,UMShareToRenren,UMShareToDouban,UMShareToQzone,UMShareToEmail,UMShareToSms,UMShareToWechatSession,nil]
                                       delegate:self];
    
    
    /*
     SSO?
     如果我们手机端已经安装了需要分享的平台客户端，会直接打开客户端要求用户授权，而不需要用户再次输入账号密码！！
     */
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
