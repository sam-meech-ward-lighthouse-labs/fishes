//
//  FishTableViewCell.m
//  tmp
//
//  Created by Sam Meech-Ward on 2019-01-24.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "FishTableViewCell.h"

@implementation FishTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setFish:(Fish *)fish {
  _fish = fish;
  self.name.text = fish.name;
}

@end
