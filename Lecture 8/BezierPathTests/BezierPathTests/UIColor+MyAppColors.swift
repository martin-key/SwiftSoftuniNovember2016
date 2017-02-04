//
//  UIColor+MyAppColors.swift
//  BezierPathTests
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//


import UIKit

extension UIColor{
    
    class func myCustomColor() -> UIColor{
        return UIColor(red: 1.0, green: 0.0, blue: 0.5, alpha: 1.0)
    }
    
    static var myColor: UIColor{
        get{
            return UIColor(red: 1.0, green: 0.0, blue: 0.5, alpha: 1.0)
        }
    }
    
}
