//
//  ViewController.swift
//  SourceControlDemo
//
//  Created by Nagarjuna Naidu on 08/03/25.
//

import UIKit

class ViewController: UIViewController {
    var aLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        let frame = CGRect(x: 100, y: 100, width: 300, height: 100)
        aLabel = UILabel(frame: frame)
        aLabel.textAlignment = .center
        aLabel.text = "Hello Naagarjuna Sannapaneni Naidu"
        aLabel.alpha = 1.1 //Tranparancy
        aLabel.font = UIFont.boldSystemFont(ofSize: 30)
        aLabel.numberOfLines = 3
        aLabel.textAlignment = .center
        let range = NSRange(location: 0, length: 10)
        let attributedString = NSMutableAttributedString(string: "Hello Naagarjuna Sannapaneni Naidu")
        attributedString.addAttributes([NSAttributedString.Key.backgroundColor : UIColor.cyan], range: range)
        aLabel.attributedText = attributedString
        
        
        let aButton = UIButton(type: .system)
        aButton.frame = CGRect(x: 100, y: 170, width: 200, height: 100)
        aButton.setTitle("clickMe", for: .normal)
        aButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        aButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.frame = CGRect(x: 100, y: 250, width: 200, height: 100)
        stepper.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
        
        let datepicker = UIDatePicker()
        datepicker.datePickerMode = .dateAndTime
        datepicker.frame = CGRect(x: 100, y: 280, width: 200, height: 100)
        datepicker.addTarget(self, action: #selector(datePicked), for: .valueChanged)
        
        let segmentedControl = UISegmentedControl(items: ["one","two","three","four"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(segmentedControler), for: .valueChanged)
        segmentedControl.frame = CGRect(x: 100, y: 360, width: 200, height: 50)
        
        let textField = UITextField()
        textField.placeholder = "Enter Text"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 100, y: 410, width: 200, height: 50)
        textField.addTarget(self, action: #selector(textFieldUI), for: .editingChanged)
        
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.frame = CGRect(x: 100, y: 450, width: 200, height: 50)
        slider.addTarget(self, action: #selector(sliderValueChange), for: .valueChanged)
        
        let toggleSwitch = UISwitch()
        toggleSwitch.frame = CGRect(x: 100, y: 500, width: 200, height: 50)
        toggleSwitch.addTarget(self, action: #selector(toggleSwitchOnOff), for: .valueChanged)
        
        let tableView = UITableView()
        tableView.frame = CGRect(x: 50, y: 900, width: 300, height: 200)
        
        view.addSubview(aLabel)
        view.addSubview(aButton)
        view.addSubview(stepper)
        view.addSubview(datepicker)
        view.addSubview(segmentedControl)
        view.addSubview(textField)
        view.addSubview(slider)
        view.addSubview(toggleSwitch)
        view.addSubview(tableView)
    }
    
    
    @objc func buttonClicked(){
        print("button clicked")
    }
    @objc func stepperValueChanged(_ sender: UIStepper) {
        print("Stepper value: \(sender.value)")
    }
    @objc func datePicked(sender:UIDatePicker){
        print("date picker \(sender.date)")
    }
    @objc func segmentedControler(sender: UISegmentedControl){
        print("Selected segmented Index \(sender.selectedSegmentIndex)")
    }
    @objc func textFieldUI(sender:UITextField){
        print("text Field changed \(sender.text ?? "")")
    }
    @objc func sliderValueChange(sender:UISlider){
        print("Slider value change \(sender.value)")
    }
    @objc func toggleSwitchOnOff(sender:UISwitch){
        print("toggled Switch \(sender.isOn ? "ON" : "Off")")
    }
}

