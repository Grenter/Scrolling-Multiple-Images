//
//  SKScrollingNode.h
//  SKScrollingNode-With-Multiple-Images
//
//  Created by David Grenter on 14/01/2016.
//  Copyright © 2016 Grenter. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKScrollingNode : SKSpriteNode

@property (nonatomic) CGFloat scrollingSpeed;

+ (id) scrollingNodeWithImageNamed:(NSString *)name inContainer:(CGSize) size;
+ (id) scrollingNodeWithMultipleImages:(NSArray *)images inContainer:(CGSize) size;
- (void) update:(NSTimeInterval)currentTime;

@end
