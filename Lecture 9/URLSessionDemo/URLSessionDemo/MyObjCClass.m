//
//  MyObjCClass.m
//  URLSessionDemo
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

#import "MyObjCClass.h"

@implementation MyObjCClass


- (void) myFirstFunction{
    // do something
}


- (void) myNextFunction: (NSString *) argument andAnotherArgument: (NSInteger) anotherArgument{
    // do something with the arguments
}

- (void) functionCallingFunction{
    [self myNextFunction:@"Hello world" andAnotherArgument:1234];
}

- (void) functionInitializingAnInstance{
    NSString * aString = [[NSString alloc] init];
}


@end
