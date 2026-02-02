//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Paulette Njeri on 2/1/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet var pressButton: UIButton!
    
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This app rocks!"
    }
}

