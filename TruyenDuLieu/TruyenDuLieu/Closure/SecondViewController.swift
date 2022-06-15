//
//  SecondViewController.swift
//  TruyenDuLieu
//
//  Created by Thân Văn Thanh on 4/6/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    //B1 : tạo Closure
    var closure: ((String , String) -> Void)?
    
    
    var personData: ((Person) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func backtoFirst(_ sender: Any) {
        
        guard let name = nameTextField.text,
              let phone = phoneTextField.text
        else{
            return
        }
        //B2 : truyền dữ liệu vào closure
        // dấu ? có nghĩa là nếu biến closure ko đc gọi thì sẽ ko khởi tạo phần phía sau
        
        closure?(name, phone)
        
        personData?(Person(id: 1 , name: "Thanh" , phone: "121312312" , address: "Đông lào" , age: 22))
        
        dismiss(animated: true, completion: nil)
    }
    
    

}
