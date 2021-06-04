//
//  ViewController.swift
//  okadai_Kadai1
//
//  Created by Yudai Fujioka on 2021/06/04.
//

import UIKit

final class ViewController: UIViewController {
    
    private var sumArrays : [UITextField] {
        [firstTextField, secondTextField, thirdTextField, fourthTextField, fifthTextField]
    }
    
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var thirdTextField: UITextField!
    @IBOutlet private weak var fourthTextField: UITextField!
    @IBOutlet private weak var fifthTextField: UITextField!
    @IBOutlet private weak var sumButton: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sumButton.addTarget(self, action: #selector(tappedSumButton), for: .touchUpInside)
    }
}


@objc private extension ViewController {
    func tappedSumButton() {
        let sum = sumArrays.map({ Int($0.text ?? "") ?? 0}).reduce(0,+)
        
        resultLabel.text = sum.description
        
    }
}
