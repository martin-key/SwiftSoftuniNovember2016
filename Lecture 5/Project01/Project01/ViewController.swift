//
//  ViewController.swift
//  Project01
//
//  Created by Martin Kuvandzhiev on 1/9/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//


//Registration form
// Name, Email, Password, Password again
// Password length >= 6 chars else Red text "Too short"
// Password text == password again text else Red Text "Nor equal"
// All good = Green text "Ok"
import UIKit

enum PasswordCheckResult{
    case OK, Short, NotEqual, Empty
}

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myNewLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.myTextField.delegate = self
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        self.passwordAgainTextField.delegate = self
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // load some data
        // change the position of a button
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //execute some animations
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        self.resultLabel.isHidden = true
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case self.myTextField:
            self.emailTextField.becomeFirstResponder()
        case self.emailTextField:
            self.passwordTextField.becomeFirstResponder()
        case self.passwordTextField:
            self.passwordAgainTextField.becomeFirstResponder()
        case self.passwordAgainTextField:
            textField.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
    func evaluatePasswordsAndPresentResult(){
        switch self.checkPasswords() {
        case .OK:
            self.resultLabel.textColor = UIColor.green
            self.resultLabel.text = "OK"
        case .Empty:
            self.resultLabel.textColor = UIColor.red
            self.resultLabel.text = "One of the passwords is empty"
        case .Short:
            self.resultLabel.textColor = UIColor.red
            self.resultLabel.text = "Pass too short"
        case .NotEqual:
            self.resultLabel.textColor = UIColor.red
            self.resultLabel.text = "Passes not equal"
        }
        self.resultLabel.isHidden = false
    }
    
    func checkPasswords() -> PasswordCheckResult{
        guard self.passwordTextField.text != nil else {return .Empty}
        guard self.passwordAgainTextField.text != nil else {return .Empty}
        
        if self.passwordTextField.text!.characters.count < 6 {
            return .Short
        }
        else if self.passwordAgainTextField.text!.characters.count < 6 {
            return .Short
        }
        else if self.passwordTextField.text != self.passwordAgainTextField.text {
            return .NotEqual
        }
        
        return .OK
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }
    
    @IBAction func newButtonTapped(_ sender: UIButton) {
        sender.setTitleColor(UIColor.red, for: .normal)
    }

}

