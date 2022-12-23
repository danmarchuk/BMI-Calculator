//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Данік on 23/12/2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiResult: UILabel!
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.text = bmiValue
        
        
        
    }
    
    @IBAction func recalculateButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
