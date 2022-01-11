//
//  ViewController.swift
//  TrafficLights2
//
//  Created by Денис Ільницький on 10/01/2022.
//

import UIKit

class ViewController: UIViewController {
    enum Colors {
        case red
        case yellow
        case green
    }
    var presentColor = Colors.red
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var redLight: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        redLight.layer.cornerRadius = 70
        yellowLight.layer.cornerRadius = 70
        greenLight.layer.cornerRadius = 70
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }
    
    @IBAction func starting() {
        startButton.setTitle("NEXT", for: .normal)
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch presentColor {
        case .red:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            presentColor = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            presentColor = .green
        case .green:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            presentColor = .red
        }
        }
            
            
    }
    // Не удается поменять значение кнопки на "NEXT"
    // И симулятор запускается только после закрытия Xcode




