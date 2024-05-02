//
//  ViewController.swift
//  AssignmentCalculator
//
//  Created by Mac on 25/10/23.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen : Int = 0
    var previousNumber : Int = 0
    var performingMath = false
    var operation = 0

    @IBOutlet weak var CalcLabel: UILabel!
    
    @IBAction func dotBtn(_ sender: UIButton) {
    }
    @IBAction func numbers(_ sender: UIButton) {
     
        
    if performingMath == true{
            CalcLabel.text = String(sender.tag-1)
            numberOnScreen = Int(CalcLabel.text!)!
        performingMath = false
        }
        else{
            CalcLabel.text = CalcLabel.text! + String(sender.tag-1)
            numberOnScreen = Int(CalcLabel.text!)!
        }
    
    }
    @IBAction func calculate(_ sender: UIButton) {
        if CalcLabel.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Int(CalcLabel.text!)!
            if sender.tag == 12
            {
                CalcLabel.text = "÷"
                
            }
           else if sender.tag == 13
            {
                CalcLabel.text = "×"
                
            }
           else if sender.tag == 14
            {
                CalcLabel.text = "-"
                
            }
           else if sender.tag == 15
            {
                CalcLabel.text = "+"
                
            }
            operation = sender.tag
            performingMath = true
        }
        else if sender.tag == 16
        {
            if operation == 12
         {
             CalcLabel.text = String(previousNumber / numberOnScreen)
         }
            else if operation == 13
         {
             CalcLabel.text = String(previousNumber * numberOnScreen)
         }
       else if operation == 14
    {
        CalcLabel.text = String(previousNumber - numberOnScreen)
    }
       else if operation == 15
    {
        CalcLabel.text = String(previousNumber + numberOnScreen)
    }
    }
    else if sender.tag == 11
    {
        CalcLabel.text = ""
        previousNumber = 0
        numberOnScreen = 0
        operation = 0
    }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


