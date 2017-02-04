//
//  ViewController.swift
//  NavigationControllerApp
//
//  Created by Martin Kuvandzhiev on 1/21/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.imageView.layer.cornerRadius = self.imageView.frame.width/2
        self.imageView.layer.masksToBounds = true // variant 1
        self.imageView.clipsToBounds = true // variant 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

