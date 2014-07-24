//
//  Seal.m
//  PeevedPenguins
//
//  Created by Kendall Agbulos on 7/12/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Seal.h"

@implementation Seal
//-(id) init{
//    self = [super init];
//    
//    if (self) {
//        CCLOG(@"SEAL CREATED");
//    }
//    
//    return self;
//}
- (void)didLoadFromCCB {
    self.physicsBody.collisionType = @"seal";
}
@end
