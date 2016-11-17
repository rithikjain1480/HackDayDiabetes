//
//  LogManager.swift
//  HackDayDiabetes
//
//  Created by Rithik Jain on 11/17/16.
//  Copyright © 2016 Rithik Jain. All rights reserved.
//

import Foundation

class LogManager {
    var logs: [Log]?
    
    static let sharedInstance = LogManager()
    
    private init() {
    }

    func save() {
        let userDefaults = UserDefaults.standard
        userDefaults.set(logs!, forKey: "logs")
    }
    
    func load() {
        let userDefaults = UserDefaults.standard
        logs = userDefaults.object(forKey: "logs") as! [Log]?
    }
    
}
