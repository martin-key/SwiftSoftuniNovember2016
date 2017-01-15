//
//  PaintViewController.swift
//  SwiftL06
//
//  Created by Martin Kuvandzhiev on 1/14/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit
import CoreGraphics


class PaintViewController: UIViewController {

    var previousTouch: CGPoint?
    @IBOutlet weak var imageView:UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawLine(_ begining:CGPoint, end:CGPoint){
        UIGraphicsBeginImageContext(self.view.frame.size)
        
        let context = UIGraphicsGetCurrentContext()
        self.imageView!.image?.draw(in: self.view.frame)
        context?.move(to: begining)
        context?.addLine(to: end)
        context?.setLineWidth(4.0)
        context?.setStrokeColor(UIColor.black.cgColor)
        context?.setLineCap(.round)
        context?.strokePath()
        context?.setBlendMode(.normal)
        
        self.imageView!.image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.imageView)
        self.previousTouch = position
        drawLine(self.previousTouch!, end: position!)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.imageView)
        drawLine(self.previousTouch!, end: position!)
        self.previousTouch = position
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.imageView)
        drawLine(self.previousTouch!, end: position!)
    }
    
}
