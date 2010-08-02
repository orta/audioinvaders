  //
  //  GameScene.m
  //  audioinvaders
  //
  //  Created by Ben Maslen on 31/07/2010.
  //  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
  //

#import "GameScene.h"


@implementation GameScene

+(id) scene
{
	CCScene *scene = [CCScene node];
	GameScene *layer = [GameScene node];
	[scene addChild: layer];
	return scene;
}

-(id) init {
	if( (self=[super init] )) {
    
    isTouchEnabled = YES;
    
    goodie = [NoisySprite node];
    [goodie setPosition:CGPointFromString(@"0,0")];
    
    [self schedule: @selector(step:)];
	}
	return self;
}

-(void) step: (ccTime) delta {
  
}

- (void) moveGoodie: (int) distance {
  
}

- (void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
  if( [touches count] > 1){
    NSLog(@"two");
  }else{
    UITouch *myTouch = [touches  anyObject];
    CGPoint location = [myTouch locationInView: [myTouch view]];
    NSLog(@"%f - x, %f - y", location.x, location.y);
    if (location.y < 240 ) {
      NSLog(@"left");
    }
    else {
      NSLog(@"right");
    }
  }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
}


@end
