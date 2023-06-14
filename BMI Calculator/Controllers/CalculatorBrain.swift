//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohammad on 2023-06-14.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height:Float, weight:Float)  {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue , advice: "Eat more pies!", color: .systemTeal)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue , advice: "Fit as fiddle!", color: .black)
        } else  {
            bmi = BMI(value: bmiValue , advice: "Eat less pies!", color: .systemPink)
        }

    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .black
    }
    
    
    
    
}

