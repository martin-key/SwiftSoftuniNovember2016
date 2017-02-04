//
//  MyObjCClass.h
//  SwiftAndObjC
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyObjCClass : NSObject

@property (nonatomic, strong) NSString * aProperty;
@property (nonatomic, assign) NSInteger anInt;
@property (nonatomic, copy) NSArray * myArray; //immutable array

- (void) my1stFunction;
- (NSString *) myFunctionWithArgument: (NSString *) argument;


@end
