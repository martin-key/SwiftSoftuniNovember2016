//
//  ViewController.swift
//  Lecture9URLRequest
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var successLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.sendRequest()
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
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String:Any?]
                print(json["user1"] ?? "No such user")
            } catch {
            }
            print(statusCode)
        }
        task.resume()
    }
    
    
    func registerUser(with username: String, password: String){
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)

        let urlString = String(format: "%@/%@.json","https://softuniresttest.firebaseio.com/users/", username)
        
        guard let URL = URL(string: urlString) else {return}
        
        
        var request = URLRequest(url: URL)
        request.httpMethod = "PUT"
        
        let bodyObject: [String : Any] = [
            "name": username,
            "lastName": password.hash
        ]
        
        request.httpBody = try! JSONSerialization.data(withJSONObject: bodyObject, options: [])
        /* Start a new Task */
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                print("URL Session Task Succeeded: HTTP \(statusCode)")
                
                DispatchQueue.main.async {
                    self.successLabel.isHidden = false
                }
            }
            else {
                // Failure
                print("URL Session Task Failed: %@", error!.localizedDescription);
                DispatchQueue.main.async {
                    self.successLabel.textColor = UIColor.red
                    self.successLabel.text = "Failure"
                    self.successLabel.isHidden = false
                }
            }
        })
        task.resume()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField{
        case self.usernameTextField:
            self.passwordTextField.becomeFirstResponder()
            
        case self.passwordTextField:
            self.passwordTextField.resignFirstResponder()
            self.registerUser(with: self.usernameTextField.text!, password: self.passwordTextField.text!)
        default:
            break
        }
        return true
    }

}

