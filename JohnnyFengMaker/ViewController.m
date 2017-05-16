//
//  ViewController.m
//  JohnnyFengMaker
//
//  Created by warmjar on 2017/5/15.
//  Copyright © 2017年 warmjar. All rights reserved.
//

#import "ViewController.h"

# pragma mask -------- MenuItem

@interface MenuItem : NSObject
@property (nonatomic, copy) NSString* viewCtrlName;
@property (nonatomic, copy) NSString* content;
+ (instancetype) itemWithName:(NSString*)vcName content:(NSString*)content;
@end
@implementation MenuItem

+ (instancetype)itemWithName:(NSString *)vcName content:(NSString *)content {
    MenuItem* item = [MenuItem new];
    item.viewCtrlName = vcName;
    item.content = content;
    return item;
}

@end


# pragma mask -------- ViewController

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView* menuView;
@property (nonatomic, strong) NSArray<MenuItem*>* datas;
@end

@implementation ViewController

# pragma mask 2 UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"MenuCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"MenuCell"];
        cell.backgroundColor = JFHexColor(0, 0);
        cell.textLabel.font = [UIFont boldSystemFontOfSize:14];
        cell.textLabel.textColor = JFYellowColor;
        cell.detailTextLabel.font = [UIFont systemFontOfSize:11];
        cell.detailTextLabel.textColor = JFHexColor(0x999999, 0.8);
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = self.datas[indexPath.row].viewCtrlName;
    cell.detailTextLabel.text = self.datas[indexPath.row].content;
    return cell;
}

# pragma mask 2 UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

# pragma mask 3 life circles

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = JFHexColor(0x27384b, 1);
    self.menuView.left = 0;
    self.menuView.top = 64;
    self.menuView.right = SCREEN_WIDTH;
    self.menuView.bottom = SCREEN_HEIGHT;
    [self.view addSubview:self.menuView];
    
}


# pragma mask 4 getter
- (UITableView *)menuView {
    if (!_menuView) {
        _menuView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _menuView.tableFooterView = [UIView new];
        _menuView.backgroundColor = [UIColor clearColor];
        _menuView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _menuView.dataSource = self;
        _menuView.delegate = self;
    }
    return _menuView;
}

- (NSArray<MenuItem *> *)datas {
    return @[[MenuItem itemWithName:@"TestForStepSegmentView" content:@"测试步骤分部视图;"]];
}


@end



# pragma mask -------- MenuViewCell


