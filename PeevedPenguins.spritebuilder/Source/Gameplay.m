//
//  Gameplay.m
//  PeevedPenguins
//
//  Created by Kendall Agbulos on 7/13/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Gameplay.h"

@implementation Gameplay{
    CCPhysicsNode *_physicsNode;
    CCNode *_catapultArm;
}

//is called when CCB file has completed loading
-(void)didLoadFromCCB{
    //tell this scene to accep touches
    self.userInteractionEnabled =  TRUE;
}

//called on every touch in this scene
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    [self launchPenguin];
}

-(void) launchPenguin{
    //loads the Penguin.ccb we have  set up in our spritebuilder
    CCNode *penguin = [CCBReader load:@"Penguin"];
    //position the penguin in the bowl of the catapult
    penguin.position = ccpAdd(_catapultArm.position, ccp(16,50));
    //add the penguin to the physics node of this scene because it has physics enabled
    [_physicsNode addChild:penguin];
    
    //manually create and add a force to launch the penguin
    CGPoint launchDirection = ccp(1, 0);
    CGPoint force = ccpMult(launchDirection, 1000);
    [penguin.physicsBody applyForce:force];
    
}
@end
