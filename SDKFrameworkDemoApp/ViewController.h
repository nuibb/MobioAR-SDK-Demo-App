//
//  ViewController.h
//  SDKFrameworkDemoApp
//
//  Created by Steve JobsOne on 12/18/18.
//  Copyright © 2018 MobioApp Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SceneKit/SceneKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet SCNView *sceneView;
@property (weak, nonatomic) IBOutlet UIView *ARView;

- (IBAction)startBtn:(id)sender;
- (IBAction)stopBtn:(id)sender;
- (IBAction)refreshButtonPressed:(id)sender;

@end

