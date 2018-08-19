//
//  TemperatureViewController.swift
//  unitConverter
//
//  Created by Nadeeka Athukorala on 8/17/18.
//  Copyright © 2018 Nadeeka Athukorala. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet var celsiusTextField: UITextField!
    @IBOutlet var farenheightTextField: UITextField!
    @IBOutlet var kelvinTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func celsiusTextField(_ sender: UITextField) {
        let celsiusValue = Float32(celsiusTextField.text!)
        
        if celsiusValue == nil {
            farenheightTextField.text = ""
            kelvinTextField.text = ""
        }else{
            let farenheightValue = celsiusValue!*33.8
            let kelvinValue = celsiusValue!*274.15
            
            farenheightTextField.text = String(format:"%f",farenheightValue)
            kelvinTextField.text = String(format:"%f",kelvinValue)
        }
    }
    
    @IBAction func farenheightTextField(_ sender: UITextField) {
        let farenheightValue = Float32(farenheightTextField.text!)
        
        if farenheightValue == nil {
            celsiusTextField.text = ""
            kelvinTextField.text = ""
        }else{
            let celsiusValue = -17.2222*farenheightValue!;
            let kelvinValue = farenheightValue!*255.928
            
            celsiusTextField.text = String(format:"%f",celsiusValue)
            kelvinTextField.text = String(format:"%f",kelvinValue)
        }
        
    }
    @IBAction func kelvinTextField(_ sender: UITextField) {
        let kelvinValue = Float32(kelvinTextField.text!)
        
        if kelvinValue == nil {
            celsiusTextField.text = ""
            farenheightTextField.text = ""
        }else{
            let celsiusValue = -272.15*kelvinValue!;
            let farenheightValue = -457.87*kelvinValue!;
            
            celsiusTextField.text = String(format:"%f",celsiusValue)
            farenheightTextField.text = String(format:"%f",farenheightValue)
        }
    }
}

