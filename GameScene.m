  //
  //  GameScene.m
  //  audioinvaders
  //
  //  Created by Ben Maslen on 31/07/2010.
  //  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
  //

#import "GameScene.h"
#import "CocosDenshion.h"

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

    SimpleAudioEngine *sae = [SimpleAudioEngine sharedEngine];

    goodie = [[NoisySprite node] retain];    
    [goodie setPosition:CGPointFromString(@"0,0")];
    
      //[self schedule: @selector(step:)];
	}
	return self;
}

-(void) step: (ccTime) delta {
  
}

- (void) moveGoodie: (CGFloat) distance {

  if ( (goodie.position.x != 100) && (goodie.position.x != -100) ) {
    CGPoint newPoint = [goodie position];
    newPoint.x += distance;
    [goodie setPosition: newPoint];
  }
  NSLog(@"play");
  [(SimpleAudioEngine*) sae playEffect:@"goodie.mp3" pitch:1.0f pan:0.0f gain:1.0f];
}

- (void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
  if( [touches count] > 1){
    NSLog(@"two");
  }else{
    UITouch *myTouch = [touches  anyObject];
    CGPoint location = [myTouch locationInView: [myTouch view]];
    if (location.y < 240 ) {
      [self moveGoodie:-10.0f];
    }
    else {
      [self moveGoodie:10.0f];
    }
  }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
}

-(void) dealloc{
  
  [goodie dealloc];
  [super dealloc];
}

@end
