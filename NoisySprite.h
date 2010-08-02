//
//  NoisySprite.h
//  audioinvaders
//
//  Created by Ben Maslen on 02/08/2010.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import <AVFoundation/AVFoundation.h>
#import "CocosDenshion.h"


@interface NoisySprite : CCNode {
    CDSoundSource * sound;
}

@property (retain) CDSoundSource * sound;

@end
