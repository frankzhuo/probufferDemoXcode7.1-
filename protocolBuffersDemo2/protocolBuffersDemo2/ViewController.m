//
//  ViewController.m
//  protocolBuffersDemo2
//
//  Created by frank on 15/11/18.
//  Copyright © 2015年 frank. All rights reserved.
//

#import "ViewController.h"
//@import ProtocolBuffers;
#import "Person.pb.h"
#import <ProtocolBuffers/ProtocolBuffers.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //序列化
    Person_Builder *ps = [[Person_Builder alloc] init];
    ps.name = @"Aquarius";
    ps.id = 10000;
    ps.email = @"Aquarius@mail.com";
    NSData *data = [[ps build] data];
    //反序列化
    Person *ps1 = [Person parseFromData:data];
    
    NSLog(@"%@-%d-%@",ps1.name, ps1.id, ps1.email);
}



@end
