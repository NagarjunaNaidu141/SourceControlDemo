//
//  ViewController.swift
//  SourceControlDemo
//
//  Created by Nagarjuna Naidu on 08/03/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let add = add(a: 4, b: 6)
        print("Add:\(add)")
    }

    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

