//
//  WeightViewController.swift
//  unitConverter
//
//  Created by Nadeeka Athukorala on 8/17/18.
//  Copyright © 2018 Nadeeka Athukorala. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

class WeightViewController: UIViewController {
    @IBOutlet var gramTextField: UITextField!
    @IBOutlet var kilogramTextField: UITextField!
    @IBOutlet var poundTextField: UITextField!
    @IBOutlet var ounceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gramTextField(_ sender: UITextField) {
        let gramValue = Double(gramTextField.text!)
        
        if gramValue == nil {
            kilogramTextField.text = ""
            poundTextField.text = ""
            ounceTextField.text = ""
        }else{
        let kilogramValue = gramValue!/1000
        let poundValue = gramValue!*0.00220462
        let ounceValue = gramValue!*0.035274
        
        kilogramTextField.text = String(format:"%f",kilogramValue)
        poundTextField.text = String(format:"%f",poundValue)
        ounceTextField.text = String(format:"%f",ounceValue)
        }
    }
    
    @IBAction func kilogramTextField(_ sender: UITextField) {
        let kilogramValue = Double(kilogramTextField.text!)
        
        if kilogramValue == nil {
            gramTextField.text = ""
            poundTextField.text = ""
            ounceTextField.text = ""
        }else{
            let gramValue = kilogramValue!*1000
            let poundValue = kilogramValue!*2.20462
            let ounceValue = kilogramValue!*35.274
            
            gramTextField.text = String(format:"%f",gramValue)
            poundTextField.text = String(format:"%f",poundValue)
            ounceTextField.text = String(format:"%f",ounceValue)
        }
    }
    
    @IBAction func poundTextField(_ sender: UITextField) {
        let poundValue = Double(poundTextField.text!)
        
        if poundValue == nil {
            gramTextField.text = ""
            kilogramTextField.text = ""
            ounceTextField.text = ""
        }else{
            let gramValue = poundValue!*453.592
            let kilogramValue = poundValue!*0.453592
            let ounceValue = poundValue!*16
            
            gramTextField.text = String(format:"%f",gramValue)
            kilogramTextField.text = String(format:"%f",kilogramValue)
            ounceTextField.text = String(format:"%f",ounceValue)
        }
    }
    
    @IBAction func ounceTextField(_ sender: UITextField) {
        let ounceValue = Double(ounceTextField.text!)
        
        if ounceValue == nil {
            gramTextField.text = ""
            kilogramTextField.text = ""
            poundTextField.text = ""
        }else{
            let gramValue = ounceValue!*28.3495
            let kilogramValue = ounceValue!*0.0283495
            let poundValue = ounceValue!*0.0625
            
            gramTextField.text = String(format:"%f",gramValue)
            kilogramTextField.text = String(format:"%f",kilogramValue)
            poundTextField.text = String(format:"%f",poundValue)
        }
    }
    
    
}

