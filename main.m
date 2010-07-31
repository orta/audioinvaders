//
//  main.m
//  audioinvaders
//
//  Created by Ben Maslen on 31/07/2010.
//  Copyright wgrids 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
	NSAutoreleasePool *pool = [NSAutoreleasePool new];
	int retVal = UIApplicationMain(argc, argv, nil, @"audioinvadersAppDelegate");
	[pool release];
	return retVal;
}
