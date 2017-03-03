//
//  ViewController.swift
//  EsDivisior
//
//  Created by Eduardo D De La Cruz Marr on 8/2/17.
//  Copyright © 2017 Eduardo D De La Cruz Marrero. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        var divisor : Int = 2
        var divisores : [Int] = []
        
        while divisor < Int(numberTextField.text!)!
        {
            if Int(numberTextField.text!)! % divisor == 0
            {
                divisores.append(divisor)
                divisor += 1
            }
            else
            {
                divisor += 1
            }
        }
        
        var str : String = ""
        
        if divisores.isEmpty
        {
            resultLabel.text = "El numero introducido es primo por lo que es solo divisible entre 1 y \(numberTextField.text!)"
        }
        else
        {
            str = "El numero introducido no es primo y sus divisores son 1, "
            
            for var i in 0...divisores.count-1
            {
                str += String(divisores[i]) + ", "
                i += 1
            }
            
            str += "\(numberTextField.text!)"
            
            resultLabel.text = str
        }
    }
}
