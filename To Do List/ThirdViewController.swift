//
//  ThirdViewController.swift
//  To Do List
//
//  Created by Dhruv Upadhyay on 9/12/15.
//  Copyright © 2015 Dhruv Upadhyay. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var catAgeTextField: UITextField!
    
    

    @IBAction func findAge(sender: AnyObject) {
        
        var catAge = Double(catAgeTextField.text!)!
        
        catAge = catAge * 7
        
        resultLabel.text = "Your cat is \(catAge) years old in cat years!"
    }
    
    
    
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            
            self.catAgeTextField.delegate = self
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
        

}
