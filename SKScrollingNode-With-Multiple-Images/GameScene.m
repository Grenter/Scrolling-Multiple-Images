//
//  GameScene.m
//  SKScrollingNode-With-Multiple-Images
//
//  Created by David Grenter on 14/01/2016.
//  Copyright (c) 2016 Grenter. All rights reserved.
//

#import "GameScene.h"
#import "SKScrollingNode.h"

@implementation GameScene {
    SKScrollingNode * bgNode;
    BOOL scrolling;
}

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    
    NSArray * bgImages = [NSArray arrayWithObjects:@"forest", @"snow", @"dessert", nil];
    
    bgNode = [SKScrollingNode scrollingNodeWithMultipleImages:bgImages inContainer:view.frame.size];
    //bgNode = [SKScrollingNode scrollingNodeWithImageNamed:[bgImages firstObject] inContainer:self.frame.size]; // call for scrolling one Image
    bgNode.scrollingSpeed = 10;
    bgNode.anchorPoint = CGPointZero;
    scrolling = NO;
    
    [self addChild:bgNode];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    scrolling = YES;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    
    if (scrolling == YES)
    {
        [bgNode update:currentTime];
    }
}

@end
