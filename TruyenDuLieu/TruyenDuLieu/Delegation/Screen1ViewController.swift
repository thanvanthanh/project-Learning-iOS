//
//  Screen1ViewController.swift
//  TruyenDuLieu
//
//  Created by Thân Văn Thanh on 4/6/21.
//

import UIKit

class Screen1ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func gotoScreen2(_ sender: Any) {
        let screen2VC = Screen2ViewController()
        screen2VC.modalPresentationStyle = .fullScreen
        
        // sử dụng delegate
        screen2VC.myDelegate = self
        
        
        present(screen2VC, animated: true, completion: nil)
    }
    
    
}
extension Screen1ViewController: MyDelegate{
    func dataDelegate(_ name: String, _ phone: String) {
        nameLabel.text = name
        phoneLabel.text = phone
    }
    
}
