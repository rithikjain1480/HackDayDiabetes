//
//  LogViewController.swift
//  HackDayDiabetes
//
//  Created by Rithik Jain on 11/10/16.
//  Copyright © 2016 Rithik Jain. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {

   // var mealInfo: Log
    
    @IBOutlet weak var carbContent: UITextField!
    @IBOutlet weak var sugarContent: UITextField!
    @IBOutlet weak var mealName: UITextField!
    @IBAction func finishInput(_ sender: AnyObject) {
        let log = Log(name: mealName.text!, carbs: Double(carbContent.text!)!, sugar: Double(sugarContent.text!)!)
    
        LogManager.sharedInstance.logs?.append(log)
        LogManager.sharedInstance.save()
    }
    
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

}
