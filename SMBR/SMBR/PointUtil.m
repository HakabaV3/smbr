
#import "PointUtil.h"

CGPoint PointAdd(CGPoint p1, CGPoint p2) {
    return CGPointMake(p1.x + p2.x, p1.y + p2.y);
}

CGPoint PointMul(CGPoint p, CGFloat f) {
    return CGPointMake(p.x * f, p.y * f);
}