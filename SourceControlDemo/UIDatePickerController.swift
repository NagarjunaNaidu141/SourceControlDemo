//
//  UIDatePicker.swift
//  SourceControlDemo
//
//  Created by Nagarjuna Naidu on 20/03/25.
//

import UIKit

class UIDatePickerController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //updateDateLabel(date: datePicker.date)
        dateLabel.text = "select date appears here"
    }
    
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        
        updateDateLabel(date: sender.date)
    }
    func updateDateLabel(date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateLabel.text = dateFormatter.string(from: date)
    }
    
}
