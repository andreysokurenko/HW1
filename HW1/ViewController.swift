//
//  ViewController.swift
//  HW1
//
//  Created by Andrey on 20.02.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var startButtonLabel: UIButton!
    
    var countColor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
        
        redColor.layer.cornerRadius = 75
        yellowColor.layer.cornerRadius = 75
        greenColor.layer.cornerRadius = 75


        
        
    }
    
    
    @IBAction func startButton(_ sender: UIButton) {
        
        startButtonLabel.setTitle("Next", for: .normal)
        
        switch countColor {
        case 0:
            redColor.alpha = 1
            greenColor.alpha = 0.3
            countColor = 1
        case 1:
            yellowColor.alpha = 1
            redColor.alpha = 0.3
            countColor = 2
        case 2:
            greenColor.alpha = 1
            yellowColor.alpha = 0.3
            countColor = 0
        default:
            break
        }
        
    }
    
        
        
    
    

}

