//
//  ResultViewController.swift
//  MyCalc
//
//  Created by 梅澤慶介 on 2017/07/17.
//  Copyright © 2017年 梅澤慶介. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 最初の画面で入力された金額
    var price: Int = 0
    // 前の画面で入力された%
    var percent: Int = 0

    @IBOutlet weak var resultField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        let percentValue = Float(percent) / 100.0
        let percentOffPrice = Int(Float(price) * (1.0 - percentValue))
        resultField.text = "\(percentOffPrice)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
