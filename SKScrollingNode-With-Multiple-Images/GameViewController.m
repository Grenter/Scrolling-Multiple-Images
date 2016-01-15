//
//  GameViewController.m
//  SKScrollingNode-With-Multiple-Images
//
//  Created by David Grenter on 14/01/2016.
//  Copyright (c) 2016 Grenter. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@interface GameViewController()

@property (weak,nonatomic) IBOutlet SKView * gameView;

@end

@implementation GameViewController
{
    GameScene * scene;
}

//- (void)viewWillLayoutSubviews
//{
//    [super viewWillLayoutSubviews];
//    
//    // Configure the view.
//    SKView * skView = (SKView *)self.view;
//    if (!skView.scene) {
//        skView.showsFPS = YES;
//        skView.showsNodeCount = YES;
//        
//        // Create and configure the scene.
//        SKScene * scene = [GameScene sceneWithSize:skView.bounds.size];
//        scene.scaleMode = SKSceneScaleModeAspectFill;
//        
//        // Present the scene.
//        [skView presentScene:scene];
//    }
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Configure the view.
    self.gameView.showsFPS = YES;
    self.gameView.showsNodeCount = YES;
    
    // Create and configure the scene.
    scene = [GameScene sceneWithSize:self.gameView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene
    [self.gameView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
