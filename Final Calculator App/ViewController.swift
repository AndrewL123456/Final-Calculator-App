//
//  ViewController.swift
//  Final Calculator App
//
//  Created by Lujan, Andrew - Student on 3/2/21.
//  Copyright © 2021 Lujan, Andrew - Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performingMath = false;
    var operation = 0;
   
    @IBOutlet weak var currentGrade: UITextField!
    
    @IBOutlet weak var percentFinal: UITextField!
    
    @IBOutlet weak var percentDesired: UITextField!
    
    @IBOutlet weak var percentRequired: UILabel!
    
    @IBOutlet weak var luckLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func One(_ sender: Any) {

        }
    
    
    @IBAction func Two(_ sender: Any) {
    }
    
    @IBAction func Three(_ sender: Any) {
    }
    
    @IBAction func Four(_ sender: Any) {
    }
    
    @IBAction func Five(_ sender: Any) {
    }
    
    @IBAction func Six(_ sender: Any) {
    }
    
    @IBAction func Seven(_ sender: Any) {
    }
    
    @IBAction func Eight(_ sender: Any) {
    }
    
    @IBAction func Nine(_ sender: Any) {
    }
    
    @IBAction func Zero(_ sender: Any) {
    }
    
    @IBAction func Calculate(_ sender: Any) {
        let classGrade = Double(currentGrade.text!)!
        let testPercent = Double(percentFinal.text!)!
        let finalGrade = Double(percentDesired.text!)!
         
        let examWeight = (testPercent/100)
        
        let gradeNeeded = (finalGrade - ((1-examWeight) * classGrade))/examWeight
        print(gradeNeeded)
        percentRequired.text = "\(gradeNeeded)"
        if gradeNeeded < 100 {
            view.backgroundColor = .systemGreen
        }
        else {
            view.backgroundColor = .systemRed
            luckLabel.isHidden = false
        }
    }
    


}
