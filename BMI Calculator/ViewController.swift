//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Данік on 19/12/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightValueView: UILabel!
    
    @IBOutlet weak var weightValueView: UILabel!
    
    @IBOutlet weak var heightOutlet: UISlider!
    
    @IBOutlet weak var weightOutlet: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        //var value = sender.value.round(value * 100)
       // railRatioLabelField.text! = String(format: "%.2f", currentRatio)
        let value = sender.value
        let text = String(format: "%.2f", value)
        heightValueView.text = "\(text)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let value = sender.value
        let text = String(format: "%.0f", value)
        weightValueView.text = "\(text)kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print(heightOutlet.value)
        print(weightOutlet.value)
    }
    
}

