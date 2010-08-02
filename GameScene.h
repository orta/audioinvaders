//
//  GameScene.h
//  audioinvaders
//
//  Created by Ben Maslen on 31/07/2010.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "NoisySprite.h"

@interface GameScene : CCLayer {
    NSMutableArray *baddies;
    NoisySprite* goodie;

}

+(id) scene;

@end
