//
//  Log.swift
//  HackDayDiabetes
//
//  Created by Rithik Jain on 11/10/16.
//  Copyright © 2016 Rithik Jain. All rights reserved.
//

import Foundation

class Log: NSCoding {
    var name: String
    var carbs: Double
    var sugar: Double
    
    init(name: String, carbs: Double, sugar: Double) {
        self.name = name
        self.carbs = carbs
        self.sugar = sugar
    }
    
    func save() {
        //NSKeyedArchiver.archiveRootObject(self, toFile: "/")
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(carbs, forKey: "carbs")
        aCoder.encode(sugar, forKey: "sugar")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObject(forKey: "name") as! String
        let carbs = aDecoder.decodeObject(forKey: "carbs") as! Double
        let sugar = aDecoder.decodeObject(forKey: "sugar") as! Double
        self.init(name: name, carbs: carbs, sugar: sugar)
    }
}
