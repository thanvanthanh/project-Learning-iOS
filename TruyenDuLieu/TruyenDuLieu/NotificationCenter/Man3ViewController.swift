//
//  Man3ViewController.swift
//  TruyenDuLieu
//
//  Created by Thân Văn Thanh on 4/6/21.
//

import UIKit

class Man3ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backtoMan1(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
  
    @IBAction func guiThongBao(_ sender: Any) {
        guard let name = nameTextField.text, let phone = phoneTextField.text else{
            return
        }
        
        let data = (name, phone)
        
        //gửi thông báo
        NotificationCenter.default.post(name: Notification.Name.init("Person"), object: data)
    }
    
    

}
