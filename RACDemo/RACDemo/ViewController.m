//
//  ViewController.m
//  RACDemo
//
//  Created by zxf on 2020/8/7.
//

#import "ViewController.h"
#import "ReactiveObjC.h"
#import "Person.h"

@interface ViewController ()

@property (strong, nonatomic) Person *tom;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tom = Person.new;
    
    [RACObserve(_tom, age) subscribeNext:^(id  _Nullable x) {
        NSLog(@"x: %@", x);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _tom.age += 1;
}


@end
