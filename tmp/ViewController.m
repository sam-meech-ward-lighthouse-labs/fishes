//
//  ViewController.m
//  tmp
//
//  Created by Sam Meech-Ward on 2019-01-24.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "ViewController.h"
#import "Fish.h"
#import "FishTableViewCell.h"
#import "DetailViewController.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic) NSArray<Fish *> *fishes;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)setupFish {
  self.fishes = @[
                  [[Fish alloc] initWithName:@"Jim Bob" andMemoryLevel:5],
                  [[Fish alloc] initWithName:@"Phillip" andMemoryLevel:3],
                  [[Fish alloc] initWithName:@"Star" andMemoryLevel:0],
                  ];
  
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  
  [self setupFish];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
  
  FishTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
  
  Fish *fish = self.fishes[indexPath.row];
  cell.fish = fish;
  
  return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.fishes.count;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"cell-to-details"]) {
    
    Fish *fish = self.fishes[self.tableView.indexPathForSelectedRow.row];
    
    DetailViewController *vc = segue.destinationViewController;
    vc.fish = fish;
  }
}


@end
