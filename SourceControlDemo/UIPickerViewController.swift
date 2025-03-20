//
//  UIPickerViewController.swift
//  SourceControlDemo
//
//  Created by Nagarjuna Naidu on 20/03/25.
//

import UIKit

class UIPickerViewController: UIViewController {
    
    let data = ["one","two","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
}
extension UIViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    public func numberOfComponents(in pickerView: UIPickerViewController) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerViewController, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
        
        
        
    }

