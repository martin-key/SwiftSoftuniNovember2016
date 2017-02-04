//
//  NotificationSendingClass.swift
//  NotificationCenter
//
//  Created by Martin Kuvandzhiev on 2/4/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

extension NSNotification.Name{
    static let importantNotification = Notification.Name("ImportantNotificationName")
}


protocol AProtocol:Hashable{
    func aFunc()
    
}


class NotificationSendingClass: NSObject {
    
    
    override init(){
        super.init()
        self.sendAMessage()
        
        
    }
    
    func sendAMessage(){
        NotificationCenter.default.post(name: .importantNotification, object: self, userInfo: ["TimeOfUpdate":301887234])
    }
    
}
