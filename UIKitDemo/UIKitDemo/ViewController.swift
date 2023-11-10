//
//  ViewController.swift
//  UIKitDemo
//
//  Created by 홍세희 on 2023/11/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textfieldName: UITextField!
    @IBOutlet var titleText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        textfieldName.text = "Hello! " + (titleText.text ?? "")
    }
}

