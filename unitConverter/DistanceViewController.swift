//
//  DistanceViewController.swift
//  unitConverter
//
//  Created by Nadeeka Athukorala on 8/18/18.
//  Copyright © 2018 Nadeeka Athukorala. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {
    
    @IBOutlet var meterTextField: UITextField!
    @IBOutlet var footTextField: UITextField!
    @IBOutlet var yardTextfield: UITextField!
    @IBOutlet var kmTextField: UITextField!
    @IBOutlet var mileTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func meterTextField(_ sender: UITextField) {
        let meterValue = Double(meterTextField.text!)
        
        if meterValue == nil {
            footTextField.text = ""
            yardTextfield.text = ""
            kmTextField.text = ""
            mileTextField.text = ""
        }else{
            let footValue = meterValue!*3.28084
            let yardValue = meterValue!*1.09361
            let kmValue = meterValue!*0.001
            let mileValue = meterValue!*0.000621371
            
            footTextField.text = String(format:"%f",footValue)
            yardTextfield.text = String(format:"%f",yardValue)
            kmTextField.text = String(format:"%f",kmValue)
            mileTextField.text = String(format:"%f",mileValue)
        }
    }
    
    @IBAction func footTextField(_ sender: UITextField) {
        let footValue = Double(footTextField.text!)
        
        if footValue == nil {
            meterTextField.text = ""
            yardTextfield.text = ""
            kmTextField.text = ""
            mileTextField.text = ""
        }else{
            let meterValue = footValue!*0.3048
            let yardValue = footValue!*0.333333
            let kmValue = footValue!*0.0003047996952
            let mileValue = footValue!*0.00018939375000000000589
            
            meterTextField.text = String(format:"%f",meterValue)
            yardTextfield.text = String(format:"%f",yardValue)
            kmTextField.text = String(format:"%f",kmValue)
            mileTextField.text = String(format:"%f",mileValue)
        }
    }
    @IBAction func yardTextfield(_ sender: UITextField) {
        let yardValue = Double(yardTextfield.text!)
        
        if yardValue == nil {
            meterTextField.text = ""
            footTextField.text = ""
            kmTextField.text = ""
            mileTextField.text = ""
        }else{
            let meterValue = yardValue!*0.9144
            let footValue = yardValue!*3
            let kmValue = yardValue!*0.0009144
            let mileValue = yardValue!*0.000568182
            
            meterTextField.text = String(format:"%f",meterValue)
            footTextField.text = String(format:"%f",footValue)
            kmTextField.text = String(format:"%f",kmValue)
            mileTextField.text = String(format:"%f",mileValue)
        }
    }
    @IBAction func kmTextField(_ sender: UITextField) {
        let kmValue = Double(kmTextField.text!)
        
        if kmValue == nil {
            meterTextField.text = ""
            footTextField.text = ""
            yardTextfield.text = ""
            mileTextField.text = ""
        }else{
            let meterValue = kmValue!*1000
            let footValue = kmValue!*3280.84
            let yardValue = kmValue!*1093.6133333333
            let mileValue = kmValue!*0.621371
            
            meterTextField.text = String(format:"%f",meterValue)
            footTextField.text = String(format:"%f",footValue)
            yardTextfield.text = String(format:"%f",yardValue)
            mileTextField.text = String(format:"%f",mileValue)
        }
    }
    @IBAction func mileTextField(_ sender: UITextField) {
        let mileValue = Double(mileTextField.text!)
        
        if mileValue == nil {
            meterTextField.text = ""
            footTextField.text = ""
            yardTextfield.text = ""
            kmTextField.text = ""
        }else{
            let meterValue = mileValue!*1609.34
            let footValue = mileValue!*5280
            let yardValue = mileValue!*1760
            let kmValue = mileValue!*1.60934
            
            meterTextField.text = String(format:"%f",meterValue)
            footTextField.text = String(format:"%f",footValue)
            yardTextfield.text = String(format:"%f",yardValue)
            kmTextField.text = String(format:"%f",kmValue)
        }
    }
}

