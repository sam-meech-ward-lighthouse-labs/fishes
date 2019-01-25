//
//  Fish.m
//  tmp
//
//  Created by Sam Meech-Ward on 2019-01-24.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "Fish.h"

@implementation Fish

- (instancetype)initWithName:(NSString *)name andMemoryLevel:(int)memorylevel {
  self = [super init];
  if (self) {
    _name = name;
    _memoryLevel = memorylevel;
  }
  return self;
}

@end
