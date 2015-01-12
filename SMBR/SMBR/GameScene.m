
#import "GameScene.h"
#import "PointUtil.h"

@interface GameScene ()

@property (nonatomic, strong) SKSpriteNode *playerSprite;

@end

@implementation GameScene

const CGFloat SPEED = 10.0;

- (instancetype)initWithSize:(CGSize)size {
    if (self == [super initWithSize:size]) {
        self.playerSprite = [SKSpriteNode spriteNodeWithImageNamed:@"stick_human.png"];
        
        self.playerSprite.position = CGPointMake(200.0, 200.0);
        self.playerSprite.xScale = 1.0f / 10.0f;
        self.playerSprite.yScale = 1.0 / 10.0f;
        
        [self addChild:self.playerSprite];
    }
    return self;
}

- (void)update:(NSTimeInterval)currentTime {
    [super update:currentTime];
    if (self.isTouched) {
        self.playerSprite.position = PointAdd(self.playerSprite.position, PointMul(self.inputValue, SPEED));
    }
}

@end
