//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Evgeniy Poznyak on 12/26/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = setBMI(weight / pow(height, 2))
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func setBMI(_ value: Float) -> BMI {
        switch value {
        case ...18.5:
            return BMI(value: value, advice: "To small", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5...24.9:
           return BMI(value: value, advice: "OK", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 25...:
            return BMI(value: value, advice: "To big", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        default:
          return BMI(value: value, advice: "No advice", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        }
    }
    
}
