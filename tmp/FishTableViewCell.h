//
//  FishTableViewCell.h
//  tmp
//
//  Created by Sam Meech-Ward on 2019-01-24.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fish.h"

NS_ASSUME_NONNULL_BEGIN

@interface FishTableViewCell : UITableViewCell

@property (nonatomic) Fish *fish;

@property (weak, nonatomic) IBOutlet UILabel *name;

@end

NS_ASSUME_NONNULL_END
