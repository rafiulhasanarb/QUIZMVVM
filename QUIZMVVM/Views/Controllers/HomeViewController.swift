//
//  HomeViewController.swift
//  QUIZMVVM
//
//  Created by rafiul hasan on 18/8/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton! {
        didSet {
            playButton.layer.cornerRadius = playButton.frame.height/2
        }
    }
    @IBOutlet weak var topicButton: UIButton! {
        didSet {
            topicButton.layer.cornerRadius = topicButton.frame.height/2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.        
    }
    
    
    @IBAction func onClickPlay(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickTopic(_ sender: Any) {
        let alert = UIAlertController(title: "Topics", message: "Comming soon more topics to learn more.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

