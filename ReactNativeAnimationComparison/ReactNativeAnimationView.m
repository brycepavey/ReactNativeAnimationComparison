//
//  ReactNativeAnimationView.m
//  ReactNativeAnimationComparison
//
//  Created by Bryce Pavey on 5/01/2016.
//  Copyright © 2016 Bryce Pavey. All rights reserved.
//

#import "ReactNativeAnimationView.h"
#import "RCTRootView.h"

@implementation ReactNativeAnimationView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    // Simulator
//    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    
    // Device
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://192.168.11.221:8081/index.ios.bundle?platform=ios"];

    // For production use, this `NSURL` could instead point to a pre-bundled file on disk:
    //
    //   NSURL *jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
    //
    // To generate that file, run the curl command and add the output to your main Xcode build target:
    //
    //   curl http://localhost:8081/index.ios.bundle -o main.jsbundle
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName: @"SampleApp"
                                                 initialProperties:nil
                                                     launchOptions:nil];
    
    [self addSubview:rootView];
    rootView.frame = self.bounds;
}
@end
