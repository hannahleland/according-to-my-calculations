//
//  ViewController.swift
//  AccordingToMyCalculations
//
//  Created by student5 on 2/20/19.
//  Copyright © 2019 Hannah Leland. All rights reserved.
//

/*
 button tags
 
 0-9 = same as button title
 clear = 10
 . = 18
 
 */

import UIKit

enum Operator {
    case Divide
    case Multiply
    case Subtract
    case Add
    case Equal
}

class ViewController: UIViewController {
    
    @IBOutlet weak var calculationLabel: UILabel!
    
    var numbers : [Double] = [0.0]
    var result : Double = 0.0
    var sign : Operator = .Add
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if 0...9 ~= sender.tag  {
            numbers.append(Double(sender.tag))
            
        } else if (13...16 ~= sender.tag) {
            
            switch sender.tag {
            case 16 :
                sign = .Add
            case 15 :
                sign = .Subtract
            case 14 :
                sign = .Multiply
            case 13 :
                sign = .Divide
            default:
                break
            }
            
        } else if (sender.tag == 17) {
            
        }
        
        
        
    } // end buttonPressed
    
    
    
} // end ViewController

