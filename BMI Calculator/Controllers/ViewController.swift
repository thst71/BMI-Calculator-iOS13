//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    var bmiBrain = BMIBrain(height: 1.9, weight: 80)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    private func updateUI() {
        heightSlider.value = bmiBrain.height
        weightSlider.value = Float(bmiBrain.weight)

        let weightLabelValue = String(format: "%dkg", bmiBrain.weight)
        weightLabel.text = weightLabelValue

        let heightLabelValue = String(format: "%.2fm", bmiBrain.height)
        heightLabel.text = heightLabelValue
    }

    @IBAction func onSliderValueChanged(_ sender: UISlider) {
        if sender.tag == 1 {
            bmiBrain.weight = Int(sender.value)
        }
        else {
            bmiBrain.height = sender.value
        }

        updateUI()
    }
    
}

