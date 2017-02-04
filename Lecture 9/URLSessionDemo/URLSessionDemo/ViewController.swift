//
//  ViewController.swift
//  URLSessionDemo
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit


extension NSNotification.Name{
    static let importantNotification = Notification.Name("ImportantNotificationName")
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.saveDataToUserDefaults()
        self.readDataFromUserDefaults()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func sendRequest(){
        let session = URLSession.init(configuration: URLSessionConfiguration.default)
        
        guard let URL = URL(string: "https://softuniresttest.firebaseio.com/users/.json")
            else {return}
        
        var request = URLRequest(url: URL)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: request) { (data, responce, error) in
            guard error == nil else {return}
            
            let statusCode = (responce as! HTTPURLResponse).statusCode
            print(statusCode)
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String:Any?]
                print(json["user1"]!)
            }
            catch {
                
            }
        }
        
        task.resume()
        
    }
    
    func sendPUTRequest() {
        let sessionConfig = URLSessionConfiguration.default
        
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        /* Create the Request:
         Write user (PUT https://softuniresttest.firebaseio.com/users/user2.json)
         */
        
        guard let URL = URL(string: "https://softuniresttest.firebaseio.com/users/user2.json") else {return}
        var request = URLRequest(url: URL)
        request.httpMethod = "PUT"
        
        // JSON Body
        
        let bodyObject: [String : Any] = [
            "name": "Martin",
            "lastName": "Kuvandzhiev"
        ]
        
        request.httpBody = try! JSONSerialization.data(withJSONObject: bodyObject, options: [])
        
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                print("URL Session Task Succeeded: HTTP \(statusCode)")
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }

    
    func saveDataToUserDefaults(){
        let userDefaults = UserDefaults.standard
        
        userDefaults.set("TargetData", forKey: "TargetKey")
        userDefaults.set(3.141592, forKey: "PI")
        userDefaults.synchronize()
    }
    
    func readDataFromUserDefaults(){
        let userDefaults = UserDefaults.standard
        
        let targetData = userDefaults.object(forKey: "TargetKey") as! String
        let PI = userDefaults.object(forKey: "PI") as! Float
        
        print(targetData, PI)
    }
    
    func sendGlobalMessage(){
        NotificationCenter.default.post(name:.importantNotification, object: self, userInfo: ["InfoKey":"Informaion"])
    }
    
    func attachListenerForNotification(){
        NotificationCenter.default.addObserver(forName: .importantNotification, object: nil, queue: nil) { (notification) in
            // Do something based on the event
            print(notification.userInfo ?? "")
        }
    }
    

}

