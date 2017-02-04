//
//  ViewController.swift
//  BezierPathTests
//
//  Created by Martin Kuvandzhiev on 1/28/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit
import DynamicButton

class ViewController: UIViewController {

    @IBOutlet weak var button: DynamicButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.button.setStyle(DynamicButtonStyle.close, animated: false)
        
//        let dynamicButton = DynamicButton(style: DynamicButtonStyle.hamburger)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

