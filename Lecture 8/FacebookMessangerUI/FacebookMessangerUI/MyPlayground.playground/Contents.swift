//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct MyStruct: Equatable{
    var element1: Int
    var element2: Int
    
    public static func ==(lhs: MyStruct, rhs: MyStruct) -> Bool{
        if lhs.element1 == rhs.element1 && lhs.element2 == rhs.element2{
            return true
        }
        return false
    }
}


let sth1 = MyStruct(element1: 5, element2: 10)
let sth2 = MyStruct(element1: 5, element2: 10)

print(sth1==sth2)
