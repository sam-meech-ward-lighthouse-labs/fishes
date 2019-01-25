//
//  Fish.h
//  tmp
//
//  Created by Sam Meech-Ward on 2019-01-24.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fish : NSObject

- (instancetype)initWithName:(NSString *)name andMemoryLevel:(int)memorylevel;

@property (nonatomic) NSString *name;
@property (nonatomic) int memoryLevel;

@end

NS_ASSUME_NONNULL_END
