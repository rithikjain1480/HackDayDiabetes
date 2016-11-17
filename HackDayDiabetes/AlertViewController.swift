//
//  AlertViewController.swift
//  HackDayDiabetes
//
//  Created by Rithik Jain on 11/10/16.
//  Copyright © 2016 Rithik Jain. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    var timer: Timer = Timer()
    
    @IBOutlet weak var timerSwitch: UISwitch!
    
    @IBAction func timerDidChange(_ sender: UISwitch!) {
        if sender.isOn {
            timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(remind), userInfo: nil, repeats: true)
        } else {
                timer.invalidate()
        }
    }
    
    func remind() {
        let alert = UIAlertController(title: "Alert", message: "Take insulin", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
