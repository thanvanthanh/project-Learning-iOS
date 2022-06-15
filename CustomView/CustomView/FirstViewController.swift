//
//  FirstViewController.swift
//  CustomView
//
//  Created by Taof on 3/26/21.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        
    }

    @IBAction func onGo(_ sender: Any) {
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion: nil)
    }
}
