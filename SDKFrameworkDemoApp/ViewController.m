//
//  ViewController.m
//  SDKFrameworkDemoApp
//
//  Created by Steve JobsOne on 12/18/18.
//  Copyright © 2018 MobioApp Limited. All rights reserved.
//

#import "ViewController.h"
#import <MobioAR/Ditector.h>
#import <MobioAR/ARDataSet.h>

@interface ViewController () <MobioARDelegate>

@property (nonatomic, strong) Ditector *detector;
@property (nonatomic, strong) ARDataSet *arDataSet;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    ARDataSet *ARDataset = [ARDataSet new];
    [ARDataset addModelToDataSet:@"art.scnassets/Start_stop.scn" trainImages:[[NSArray alloc] initWithObjects:@"start_stop1.jpg", @"start_stop2.jpg", @"start_stop5.jpg", nil]];
    
    
    self.detector = [[Ditector alloc] initWithARImage:_ARView trainModels:ARDataset.trainingModels];
    self.detector.sceneView = _sceneView;
    self.detector.delegate = self;
    
}

-(void)getTrackableImage:(NSString *)trackableImage {
    
    NSLog(@"%@", trackableImage);
    
}

- (IBAction)startBtn:(id)sender {
    [self.detector startAR];
}


- (IBAction)stopBtn:(id)sender {
    [self.detector stopAR];
}

- (IBAction)refreshButtonPressed:(id)sender {
    [self.detector refreshAR];
}


@end
