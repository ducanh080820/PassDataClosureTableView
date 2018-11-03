//
//  ViewController.swift
//  PassDataClosureTableView
//
//  Created by Trần Đức Anh on 11/2/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var bucket: String!
    var onCompletion: ((String) -> Void)?
    var data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if bucket != nil {
            textField.text = bucket!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doneButton(_ sender: Any?) {
        onCompletion?(textField.text ?? "")
        navigationController?.popViewController(animated: true)
    }
    
}

