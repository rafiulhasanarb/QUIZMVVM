//
//  ResultViewController.swift
//  QUIZMVVM
//
//  Created by rafiul hasan on 18/8/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = "\(result) / 10"
    }
    
    @IBAction func onClickHome(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
