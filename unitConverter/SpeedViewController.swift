//
//  SpeedViewController.swift
//  unitConverter
//
//  Created by Nadeeka Athukorala on 8/18/18.
//  Copyright © 2018 Nadeeka Athukorala. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {
    
    @IBOutlet var mpsTextField: UITextField!
    @IBOutlet var feetpsTextField: UITextField!
    @IBOutlet var kmphTextField: UITextField!
    @IBOutlet var milesphTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mpsTextField(_ sender: UITextField) {
        let mpsValue = Double(mpsTextField.text!)
        
        if mpsValue == nil {
            feetpsTextField.text = ""
            kmphTextField.text = ""
            milesphTextfield.text = ""
        }else{
            let feetpsValue = mpsValue!*3.28084
            let kmphValue = mpsValue!*3.6
            let milesphValue = mpsValue!*2.23694
            
            feetpsTextField.text = String(format:"%f",feetpsValue)
            kmphTextField.text = String(format:"%f",kmphValue)
            milesphTextfield.text = String(format:"%f",milesphValue)
        }
    }
    
    @IBAction func feetpsTextField(_ sender: UITextField) {
        let feetpsValue = Double(feetpsTextField.text!)
        
        if feetpsValue == nil {
            mpsTextField.text = ""
            kmphTextField.text = ""
            milesphTextfield.text = ""
        }else{
            let mpsValue = feetpsValue!*0.3048
            let kmphValue = feetpsValue!*1.09728
            let milesphValue = feetpsValue!*0.681818
            
            mpsTextField.text = String(format:"%f",mpsValue)
            kmphTextField.text = String(format:"%f",kmphValue)
            milesphTextfield.text = String(format:"%f",milesphValue)
        }
    }
    
    @IBAction func kmphTextField(_ sender: UITextField) {
        let kmphValue = Double(kmphTextField.text!)
        
        if kmphValue == nil {
            mpsTextField.text = ""
            feetpsTextField.text = ""
            milesphTextfield.text = ""
        }else{
            let mpsValue = kmphValue!*0.277778
            let feetpsValue = kmphValue!*0.911344
            let milesphValue = kmphValue!*0.621371
            
            mpsTextField.text = String(format:"%f",mpsValue)
            feetpsTextField.text = String(format:"%f",feetpsValue)
            milesphTextfield.text = String(format:"%f",milesphValue)
        }
    }
    
    @IBAction func milesphTextfield(_ sender: UITextField) {
        let milesphValue = Double(milesphTextfield.text!)
        
        if milesphValue == nil {
            mpsTextField.text = ""
            feetpsTextField.text = ""
            kmphTextField.text = ""
        }else{
            let mpsValue = milesphValue!*0.44704
            let feetpsValue = milesphValue!*1.46667
            let kmphValue = milesphValue!*1.60934
            
            mpsTextField.text = String(format:"%f",mpsValue)
            feetpsTextField.text = String(format:"%f",feetpsValue)
            kmphTextField.text = String(format:"%f",kmphValue)
        }
    }
    
}
