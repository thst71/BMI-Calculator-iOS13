//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Thomas Strauß on 24.05.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct BMIBrain {
    var height: Float
    var weight: Int

    let underweight = 0
    let normal = 1
    let overweight = 2

    let bmiAdviceTexts = [
        "you are too slim, eat more",
        "you are just right",
        "You need to be more mobile"
    ]

    let bmiAdviceColors = [
        #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1),
        #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1),
        #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    ]

    mutating func setWeight(_ weight: Int) {
        self.weight = weight
    }

    mutating func setHeight(_ height: Float) {
        self.height = height
    }

    func getBMI() -> BMI {
        let weightF = Float(weight)
        let bmi = weightF / pow(height, 2)

        return calculateBmiRange(bmi)
    }

    private func calculateBmiRange(_ bmi: Float) -> BMI {
        var bmiRange : Int

        if bmi < 18.5 {
            bmiRange = underweight
        } else if bmi <= 24.9 {
            bmiRange = normal
        } else {
            bmiRange = overweight
        }

        return BMI(value: bmi, advice: bmiAdviceTexts[bmiRange], color: bmiAdviceColors[bmiRange])
    }
}
