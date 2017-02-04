//
//  MyObjCClass.m
//  SwiftAndObjC
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

#import "MyObjCClass.h"
#import "SwiftAndObjC-Swift.h"

@implementation MyObjCClass

- (void) my1stFunction{
    
}

- (NSString *) myFunctionWithArgument:(NSString *)argument{
   return [self myFunctionWithArgument:argument gosho:@"arg2" losho:@"arg3"];
}

- (NSString *) myFunctionWithArgument: (NSString *) argument1
                                gosho: (NSString *) argument2
                                losho: (NSString *) argument3 {

    self.myArray = [NSArray arrayWithObjects:argument1, argument2, argument3, nil];
    
    
    UIViewController * aVC = [[ViewController alloc] init];
    aVC.view.backgroundColor = [UIColor greenColor];
    
    NSLog(@"%@ %@ %@", argument1, argument2, argument3);
    
    return @"Hello world";
}

@end
