//
//  DetailViewController.m
//  tmp
//
//  Created by Sam Meech-Ward on 2019-01-24.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *memoryLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.nameLabel.text = self.fish.name;
  self.memoryLabel.text = [NSString stringWithFormat:@"%i", self.fish.memoryLevel];
}

//- (void)setFish:(Fish *)fish {
//  _fish = fish;
//
//}

@end
