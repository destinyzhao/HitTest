//
//  ViewController.m
//  HitTest
//
//  Created by Destiny on 2018/8/31.
//  Copyright © 2018年 Destiny. All rights reserved.
//

#import "ViewController.h"
#import "AView.h"
#import "BView.h"
#import "CView.h"
#import "DView.h"
#import "EView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet AView *aView;
@property (weak, nonatomic) IBOutlet BView *bView;
@property (weak, nonatomic) IBOutlet CView *cView;
@property (weak, nonatomic) IBOutlet DView *dView;
@property (weak, nonatomic) IBOutlet EView *eView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.aView.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
