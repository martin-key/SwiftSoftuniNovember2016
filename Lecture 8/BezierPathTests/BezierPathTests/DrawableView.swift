//
//  DrawableView.swift
//  BezierPathTests
//
//  Created by Martin Kuvandzhiev on 1/28/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

class DrawableView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        self.drawCanvas1(frame: rect)
    }
 

    func drawCanvas1(frame: CGRect = CGRect(x: 0, y: 0, width: 240, height: 240)) {
        //// Color Declarations
        let fillColor = UIColor.white
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.78071 * frame.width, y: frame.minY + 0.63438 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.74442 * frame.width, y: frame.minY + 0.69962 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.77050 * frame.width, y: frame.minY + 0.65796 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.75842 * frame.width, y: frame.minY + 0.67967 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.69767 * frame.width, y: frame.minY + 0.75613 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.72533 * frame.width, y: frame.minY + 0.72683 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.70971 * frame.width, y: frame.minY + 0.74567 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.63758 * frame.width, y: frame.minY + 0.78258 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.67900 * frame.width, y: frame.minY + 0.77329 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.65900 * frame.width, y: frame.minY + 0.78208 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.58208 * frame.width, y: frame.minY + 0.76933 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.62221 * frame.width, y: frame.minY + 0.78258 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.60367 * frame.width, y: frame.minY + 0.77821 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.52233 * frame.width, y: frame.minY + 0.75613 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.56043 * frame.width, y: frame.minY + 0.76050 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.54053 * frame.width, y: frame.minY + 0.75613 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.46089 * frame.width, y: frame.minY + 0.76933 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.50325 * frame.width, y: frame.minY + 0.75613 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.48278 * frame.width, y: frame.minY + 0.76050 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.40780 * frame.width, y: frame.minY + 0.78329 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.43897 * frame.width, y: frame.minY + 0.77821 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.42130 * frame.width, y: frame.minY + 0.78283 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.34636 * frame.width, y: frame.minY + 0.75612 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.38726 * frame.width, y: frame.minY + 0.78417 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.36679 * frame.width, y: frame.minY + 0.77512 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.29746 * frame.width, y: frame.minY + 0.69762 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.33332 * frame.width, y: frame.minY + 0.74475 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.31700 * frame.width, y: frame.minY + 0.72525 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.24575 * frame.width, y: frame.minY + 0.59492 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.27650 * frame.width, y: frame.minY + 0.66812 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.25926 * frame.width, y: frame.minY + 0.63392 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.22404 * frame.width, y: frame.minY + 0.47251 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.23129 * frame.width, y: frame.minY + 0.55279 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.22404 * frame.width, y: frame.minY + 0.51200 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.25340 * frame.width, y: frame.minY + 0.35556 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.22404 * frame.width, y: frame.minY + 0.42727 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.23382 * frame.width, y: frame.minY + 0.38825 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.31487 * frame.width, y: frame.minY + 0.29337 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.26878 * frame.width, y: frame.minY + 0.32930 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.28925 * frame.width, y: frame.minY + 0.30858 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.39799 * frame.width, y: frame.minY + 0.26992 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.34050 * frame.width, y: frame.minY + 0.27816 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.36818 * frame.width, y: frame.minY + 0.27041 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.46228 * frame.width, y: frame.minY + 0.28488 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.41430 * frame.width, y: frame.minY + 0.26992 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.43570 * frame.width, y: frame.minY + 0.27496 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.51327 * frame.width, y: frame.minY + 0.29987 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.48879 * frame.width, y: frame.minY + 0.29483 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.50581 * frame.width, y: frame.minY + 0.29987 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.56981 * frame.width, y: frame.minY + 0.28221 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.51885 * frame.width, y: frame.minY + 0.29987 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.53776 * frame.width, y: frame.minY + 0.29397 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.64667 * frame.width, y: frame.minY + 0.26857 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.60013 * frame.width, y: frame.minY + 0.27130 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.62571 * frame.width, y: frame.minY + 0.26679 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.77450 * frame.width, y: frame.minY + 0.33587 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.70346 * frame.width, y: frame.minY + 0.27315 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.74612 * frame.width, y: frame.minY + 0.29554 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.69908 * frame.width, y: frame.minY + 0.46505 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.72371 * frame.width, y: frame.minY + 0.36665 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.69858 * frame.width, y: frame.minY + 0.40975 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.74587 * frame.width, y: frame.minY + 0.57242 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.69954 * frame.width, y: frame.minY + 0.50812 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.71517 * frame.width, y: frame.minY + 0.54396 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.79262 * frame.width, y: frame.minY + 0.60308 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.75979 * frame.width, y: frame.minY + 0.58562 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.77533 * frame.width, y: frame.minY + 0.59583 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.78071 * frame.width, y: frame.minY + 0.63438 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.78887 * frame.width, y: frame.minY + 0.61396 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.78492 * frame.width, y: frame.minY + 0.62437 * frame.height))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.65046 * frame.width, y: frame.minY + 0.12183 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.61354 * frame.width, y: frame.minY + 0.21629 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.65046 * frame.width, y: frame.minY + 0.15559 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.63813 * frame.width, y: frame.minY + 0.18711 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50908 * frame.width, y: frame.minY + 0.26785 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.58388 * frame.width, y: frame.minY + 0.25097 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.54799 * frame.width, y: frame.minY + 0.27101 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50830 * frame.width, y: frame.minY + 0.25506 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.50858 * frame.width, y: frame.minY + 0.26380 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.50830 * frame.width, y: frame.minY + 0.25954 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.54746 * frame.width, y: frame.minY + 0.15961 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.50830 * frame.width, y: frame.minY + 0.22265 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.52240 * frame.width, y: frame.minY + 0.18797 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.59517 * frame.width, y: frame.minY + 0.12379 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.55997 * frame.width, y: frame.minY + 0.14525 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.57588 * frame.width, y: frame.minY + 0.13331 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.64975 * frame.width, y: frame.minY + 0.10833 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.61442 * frame.width, y: frame.minY + 0.11441 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.63262 * frame.width, y: frame.minY + 0.10922 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.65046 * frame.width, y: frame.minY + 0.12183 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.65025 * frame.width, y: frame.minY + 0.11284 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.65046 * frame.width, y: frame.minY + 0.11736 * frame.height))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()
    }

    
}
