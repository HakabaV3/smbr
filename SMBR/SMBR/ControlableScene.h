//
//  ControlableScene.h
//  SMBR
//
//  Created by sho on 2015/01/12.
//  Copyright (c) 2015年 HakabaV3. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface ControlableScene : SKScene {
    CGPoint startLocation;
    CGPoint endLocation;
}

@property CGPoint inputValue;

@property BOOL isTouched;

@end
