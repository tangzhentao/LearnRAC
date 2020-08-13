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
//    _tom = Person.new;X
    
//    [RACObserve(_tom, age) subscribeNext:^(id  _Nullable x) {
//        NSLog(@"x: %@", x);
//    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    _tom.age += 1;
    
    [self ding];
}

- (void)ding {
   // RACSignal使用步骤：
   // 1.创建信号 + (RACSignal *)createSignal:(RACDisposable * (^)(id<RACSubscriber> subscriber))didSubscribe
   // 2.订阅信号,才会激活信号. - (RACDisposableX *)subscribeNext:(void (^)(id x))nextBlock
   // 3.发送信号 - (void)sendNext:(id)value
   
   // RACSignal底层实现：
   // 1.创建信号，首先把didSubscribe保存到(RACSignal)中，还不会触发。
   // 2.当信号被订阅，也就是调用signal的subscribeNext:nextBlock
   // 2.2 subscribeNext内部会创建订阅者subscriber，并且把nextBlock保存到subscriber中。
   // 2.1 subscribeNext内部会调用siganl的didSubscribe
   // 3.siganl的didSubscribe中调用[subscriber sendNext:@1];
   // 3.1 sendNext底层其实就是执行subscriber的nextBlock
   
   // 1.创建信号
   RACSignal *siganl = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
       
       // block调用时刻：每当有订阅者订阅信号，就会调用block。
       
       // 2.发送信号
       [subscriber sendNext:@1];
       
       // 如果不在发送数据，最好发送信号完成，内部会自动调用[RACDisposable disposable]取消订阅信号。
       [subscriber sendCompleted];

       return [RACDisposable disposableWithBlock:^{
           
           // block调用时刻：当信号发送完成或者发送错误，就会自动执行这个block,取消订阅信号。
           
           // 执行完Block后，当前信号就不在被订阅了。
           
           NSLog(@"信号被销毁");
           
       }];
   }];
   
   // 3.订阅信号,才会激活信号.
   [siganl subscribeNext:^(id x) {
       // block调用时刻：每当有信号发出数据，就会调用block.
       NSLog(@"接收到数据:%@",x);
   }];
}


@end
