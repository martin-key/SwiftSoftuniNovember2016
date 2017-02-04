//
//  ViewController.swift
//  UserDefaultsTest
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.saveDataToUserDefaults()
        self.readInfoFromUserDefaults()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func saveDataToUserDefaults(){
        let userDefaults = UserDefaults.standard
        
        userDefaults.set("MyInformation", forKey: "MyKey")
        userDefaults.set(3.141592, forKey: "FloatValueKey")
        userDefaults.set(69, forKey: "MyNumber")
        
        userDefaults.synchronize()
    }
    
    func readInfoFromUserDefaults(){
        print(UserDefaults.standard.object(forKey: "MyKey") as! String)
        print(UserDefaults.standard.float(forKey: "FloatValueKey"))
    }

}

