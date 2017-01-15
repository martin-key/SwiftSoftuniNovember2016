//
//  ViewController.swift
//  SwiftL06
//
//  Created by Martin Kuvandzhiev on 1/14/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var newSwitch
    : UISwitch!
    
    @IBOutlet weak var label: UILabel!
    
    var imageArray:[UIImage] = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...24{
            var baseName = "logo_loading_"
            baseName += String(index)+".png"
            imageArray.append(UIImage(named:baseName)!)
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        //self.myImageView.startAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            self.label.text = "Switch On"
        case false:
            self.label.text = "Switch Off"
        }
        
        if let something = Int("123123")
        {
            print(something)
        }
        else{
            // handle not valid number format
        }
        
        sender.onTintColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
    }

    @IBAction func sliderValueDidChanged(_ sender: UISlider) {
        label.text = String(Int(sender.value))
        sender.setValue(Float(Int(sender.value)), animated: true)
    }

    @IBAction func buttonWasClicked(_ sender: UIButton) {
        //self.myImageView.stopAnimating()
    }
}

