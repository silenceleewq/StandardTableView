//
//  NJTableView.m
//  AnalyseTableView
//
//  Created by slience on 2017/2/22.
//  Copyright © 2017年 Ninja. All rights reserved.
//

#import "NJTableView.h"
#import "NJTableViewCell.h"
#define rows 50

@interface NJTableView () <UITableViewDelegate, UITableViewDataSource>


@end

@implementation NJTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return rows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    NJTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[NJTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    return cell;
}

@end
