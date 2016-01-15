//
//  SKScrollingNode.m
//  SKScrollingNode-With-Multiple-Images
//
//  Created by David Grenter on 14/01/2016.
//  Copyright © 2016 Grenter. All rights reserved.
//

#import "SKScrollingNode.h"

@implementation SKScrollingNode


+ (id) scrollingNodeWithImageNamed:(NSString *)name inContainer:(CGSize) size
{
    UIImage * image = [UIImage imageNamed:name];
    
    SKScrollingNode * realNode = [SKScrollingNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(size.width, image.size.height)];
    realNode.scrollingSpeed = 1;
    
    float total = 0;
    while(total<(size.width + image.size.width)){
        SKSpriteNode * child = [SKSpriteNode spriteNodeWithImageNamed:name ];
        [child setAnchorPoint:CGPointZero];
        [child setPosition:CGPointMake(total, 0)];
        [realNode addChild:child];
        total+=child.size.width;
    }
    
    return realNode;
}

+ (id) scrollingNodeWithMultipleImages:(NSArray *)images inContainer:(CGSize)size
{
    SKScrollingNode * realNode = [SKScrollingNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(size.width, size.height)];
    realNode.scrollingSpeed = 1;
    
    float total = 0;
    for (NSString* imageName in images)
    {
        SKSpriteNode * child = [SKSpriteNode spriteNodeWithImageNamed:imageName];
        [child setAnchorPoint:CGPointZero];
        [child setPosition:CGPointMake(total, 0)];
        [realNode addChild:child];
        total+=child.size.width;
    }
    
    return realNode;
}


-(void)update:(CFTimeInterval)currentTime {
    
    
    [self.children enumerateObjectsUsingBlock:^(id object, NSUInteger idx, BOOL *stop)
     {
         SKSpriteNode *child = (SKSpriteNode *)object;
         child.position = CGPointMake(child.position.x-self.scrollingSpeed, child.position.y);
         if (child.position.x <= -child.size.width)
         {
             float delta = child.position.x+child.size.width;
             child.position = CGPointMake(child.size.width*(self.children.count-1)+delta, child.position.y);
         }
     }];
    
}
@end
