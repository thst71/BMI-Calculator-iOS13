//
// Created by Thomas Strauß on 24.05.21.
// Copyright (c) 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var bmiBrain : BMIBrain?



    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red

        let label = UILabel()

        let bmiText = String(format:"%.2f", bmiBrain?.getBMI().value ?? 0.0)

        label.text = bmiText
        label.frame = CGRect(origin: CGPoint(x: 10, y: 10), size: CGSize(width: 150, height: 50))

        view.addSubview(label)
    }
}
