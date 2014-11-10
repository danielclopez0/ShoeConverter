//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Daniel Lopez on 11/9/14.
//  Copyright (c) 2014 Daniel Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        
        mensShoeSizeTextField.text = ""
        mensShoeSizeTextField.resignFirstResponder()
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)"+" In EU Size"
    }

    @IBAction func womansConvertButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.resignFirstResponder()
        womensConvertedShoeSizeLable.hidden = false
        
        womensConvertedShoeSizeLable.text = "\(sizeFromTextField + conversionConstant)" + " In EU Size"
    
    }
    
    
}

