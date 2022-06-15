//
//  Man1ViewController.swift
//  TruyenDuLieu
//
//  Created by Thân Văn Thanh on 4/6/21.
//

import UIKit

class Man1ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //đăng ký nhận thông báo
        NotificationCenter.default.addObserver(self, selector: #selector(notification(_:)), name: Notification.Name.init("Person"), object: nil)
        
    }

    @objc func notification(_ data: Notification){
        guard let newData = data.object as? (String, String) else {return}
        print("màn 1 nhận data: \(newData.0) - \(newData.1) ")
        nameLabel.text = newData.0
        phoneLabel.text = newData.1
        
    }

    @IBAction func gotoMan2(_ sender: Any) {
        let Man2VC = Man2ViewController()
        Man2VC.modalPresentationStyle = .fullScreen

        present(Man2VC, animated: true, completion: nil)
    }
    

}
