//
//  MyNewViewController.swift
//  SwiftL06
//
//  Created by Martin Kuvandzhiev on 1/14/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

class MyNewViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        
        switch sender{
        case self.redSlider:
            self.redSwitch.onTintColor = UIColor(red: CGFloat(sender.value), green: 0, blue: 0, alpha: 1.0)
        case self.greenSlider:
            self.greenSwitch.onTintColor = UIColor(red: 0, green: CGFloat(sender.value), blue: 0, alpha: 1.0)
        case self.blueSlider:
            self.blueSwitch.onTintColor = UIColor(red: 0, green: 0, blue: CGFloat(sender.value), alpha: 1.0)
        default:
            break
        }
        
        self.label.text = String(format: "R:%0.2f G:%0.2f B:%0.2f", self.redSlider.value, self.greenSlider.value, self.blueSlider.value)
        
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        let senderState = sender.isOn
        switch sender {
        case self.redSwitch:
            self.redSlider.isUserInteractionEnabled = senderState
        case self.greenSwitch:
            self.greenSlider.isUserInteractionEnabled = senderState
        case self.blueSwitch:
            self.blueSlider.isUserInteractionEnabled = senderState
        default:
            break
        }
    }
    
   

    
}
