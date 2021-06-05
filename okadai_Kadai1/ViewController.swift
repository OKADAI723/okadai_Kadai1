//
//  ViewController.swift
//  okadai_Kadai1
//
//  Created by Yudai Fujioka on 2021/06/04.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var numberTextFields: [UITextField]!

    @IBOutlet private weak var sumButton: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!
    
    @IBAction func tappedSumButton(_ sender: Any) {
        let sum = numberTextFields.map { Int($0.text ?? "") ?? 0 }.reduce(0, +)
        resultLabel.text = sum.description
    }
}
