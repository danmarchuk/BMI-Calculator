//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Данік on 23/12/2022.
//

import UIKit

struct CalculatorBrain {
    
    
    var bmi: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        switch bmiValue {
        case 0...18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getBMI () -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? "Default message"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? UIColor.black
        
    }
}
