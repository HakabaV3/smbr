//
//  ViewController.m
//  SMBR
//
//  Created by sho on 2015/01/10.
//  Copyright (c) 2015年 HakabaV3. All rights reserved.
//

#import "ViewController.h"

#import "GameScene.h"

@interface ViewController ()

@property (nonatomic, strong) GameScene *scene;

@end

@implementation ViewController

- (void)loadView {
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    SKView *skView = [[SKView alloc] initWithFrame:applicationFrame];
    self.view = skView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setGameScene];
}

- (void)setGameScene {
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    skView.ignoresSiblingOrder = YES;
    
    self.scene = [[GameScene alloc] initWithSize:self.view.bounds.size];
    self.scene.scaleMode = SKSceneScaleModeAspectFit;
    [skView presentScene:self.scene];
}

@end
