//
//  MessangerTableViewCell.swift
//  FacebookMessangerUI
//
//  Created by Martin Kuvandzhiev on 1/28/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

protocol MessengerTableViewCellDelegate{
    func didPressRecepientImage(inCell:MessangerTableViewCell)
}

class MessangerTableViewCell: UITableViewCell {

    @IBOutlet weak var recepientNameLabel: UILabel!
    @IBOutlet weak var messageDetailLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var statusImageView: UIImageView!
    @IBOutlet weak var recepientImageViewButton: UIButton!
    
    var isSpecial:Bool! = false{
        didSet{
            switch isSpecial{
            case true:
                self.recepientImageViewButton.layer.borderWidth = 2.0
            case false:
                self.recepientImageViewButton.layer.borderWidth = 0.0
            default:
                break
            }
        }
    }
    
    
    var delegate: MessengerTableViewCellDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.recepientImageViewButton.layer.cornerRadius = self.recepientImageViewButton.frame.width/2
        self.statusImageView.layer.cornerRadius = self.statusImageView.frame.width/2
        
        self.recepientImageViewButton.layer.borderColor = UIColor.blue.cgColor
        
    }

    @IBAction func imageButtonTapped(_ sender: UIButton) {
        self.buttonWasPressed()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    func buttonWasPressed(){
        self.delegate?.didPressRecepientImage(inCell: self)
    }
}
