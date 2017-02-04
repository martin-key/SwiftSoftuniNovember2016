//
//  ViewController.swift
//  settingPropertiesBetweenVC
//
//  Created by Martin Kuvandzhiev on 1/28/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    
    var data: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNextViewControllerSegue"{
            let destination = segue.destination as! NextViewController
            destination.loadViewIfNeeded()
            if let aText = sender{
                destination.aLabel.text = aText as? String
            }
        }
    }

    @IBAction func Button2Tapped(_ sender: UIButton) {
        // variant 1
        self.performSegue(withIdentifier: "toNextViewControllerSegue", sender: "Text to pass")
        
        // variant 2
//        let nextViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
//        nextViewController.loadViewIfNeeded()
//        nextViewController.aLabel.text = "Other text"
//        self.navigationController?.pushViewController(nextViewController, animated: true)
        
    }

}

