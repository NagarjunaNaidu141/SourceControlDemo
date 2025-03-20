//
//  UIPickerViewController.swift
//  SourceControlDemo
//
//  Created by Nagarjuna Naidu on 20/03/25.
//

import UIKit

class UIPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return data.count
        }else{
            return number.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if component == 0{
            return data[row]
        }else{
            return number[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if component == 0{
            print("Selected data \(data[row])")
        }else {
            print("selected number \(number[row])")
        }
}

    
    
    @IBOutlet weak var pickerView: UIPickerView!
    let data = ["one","two","three","Four"]
    let number = ["1","2","3","4","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        pickerView.delegate = self
       pickerView.dataSource = self
 }
    
}



