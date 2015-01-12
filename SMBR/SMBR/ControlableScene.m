//
//  ControlableScene.m
//  SMBR
//
//  Created by sho on 2015/01/12.
//  Copyright (c) 2015年 HakabaV3. All rights reserved.
//

#import "ControlableScene.h"

@interface ControlableScene ()

@end

@implementation ControlableScene

const CGFloat MINIMUM_R = 10;

- (instancetype)initWithSize:(CGSize)size {
    if (self == [super initWithSize:size]) {
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    for (UITouch *touch in touches) {
        startLocation = [touch locationInNode:self];
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        endLocation = [touch locationInNode:self];

        CGFloat x = endLocation.x - startLocation.x;
        CGFloat y = endLocation.y - startLocation.y;
        
        CGFloat r = sqrtf(powf(x, 2)+powf(y, 2));
        
        if (r > MINIMUM_R) {
            self.isTouched = YES;
            self.inputValue = CGPointMake(x / r, y / r);
        } else {
            self.isTouched = NO;
            self.inputValue = CGPointMake(0, 0);
        }
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.isTouched = NO;
    startLocation = CGPointMake(0, 0);
}

@end
