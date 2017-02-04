//
//  ViewController.swift
//  CalcConstraintTest
//
//  Created by Martin Kuvandzhiev on 1/21/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        self.tabBarController?.selectedIndex = 2
    }


    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let firstTouch = touches.first
        let touchForce = firstTouch?.force
        
    }
}

