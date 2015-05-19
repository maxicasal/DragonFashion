//
//  ViewController.m
//  DragonFashion
//
//  Created by Maxi Casal on 10/7/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *dragons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Dragon *dragonPuff = [[Dragon alloc ] initWithName:@"Puff"];
    dragonPuff.signatureClothingItem = @"High heels";
    Dragon *dragon2 = [[Dragon alloc ] initWithName:@"Smeug"];
    dragon2.signatureClothingItem = @"Teddy";
    Dragon *dragon3 = [[Dragon alloc ] initWithName:@"Auff"];
    dragon3.signatureClothingItem = @"Fedora";
    
    self.dragons = [NSMutableArray arrayWithObjects:dragonPuff, dragon2, dragon3, nil];
    
    for (Dragon *dragon in self.dragons) {
    //    NSLog([NSString stringWithFormat:@"%", dragon.name]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];

    Dragon *dragon = self.dragons[indexPath.row];
    cell.textLabel.text = dragon.name;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

@end
