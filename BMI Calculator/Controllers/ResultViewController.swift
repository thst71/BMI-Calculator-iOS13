//
// Created by Thomas Strauß on 24.05.21.
// Copyright (c) 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController {
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    var bmi : BMI?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    private func updateUI() {
        let bmiString = String(format: "%.2f", bmi?.value ?? 0.0)
        bmiResultLabel.text = bmiString
        adviceLabel.text = bmi?.advice ?? "no bmi"
        view.backgroundColor = bmi?.color ?? UIColor.systemBackground
    }

    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true)
    }
}
