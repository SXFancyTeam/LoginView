//
//  ViewController.m
//  LoginView
//
//  Created by 0xfeedface on 16/7/6.
//  Copyright © 2016年 0xfeedface. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *logo;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIImageView *login;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.logo.image = [UIImage imageNamed:@"img1"];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(loginPress:)];
    [self.login addGestureRecognizer:tap];
}

#pragma mark - 登录事件
- (void)loginPress:(UIImageView *)sender {
    NSString *title = [NSString stringWithFormat:@"账号：%@", self.username.text];
    NSString *message = [NSString stringWithFormat:@"密码：%@", self.password.text];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
