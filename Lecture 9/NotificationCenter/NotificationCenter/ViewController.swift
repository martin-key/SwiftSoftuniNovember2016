//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        weak var weakSelf = self
        NotificationCenter.default.addObserver(forName: .importantNotification, object: nil, queue: nil) {
            (notification) in
            print(notification)
            weakSelf?.handleNotification()
        }
        
    }

    override func viewDidAppear(_ animated: Bool) {
        let notificationSener = NotificationSendingClass()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleNotification(){
        // do something
    }

    
    

}

