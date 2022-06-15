//
//  LoginViewController.swift
//  FireBaseIOS3
//
//  Created by Thân Văn Thanh on 5/12/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTexfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTexfield.delegate = self
        passwordTextField.delegate = self

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        emailTexfield.text = ""
        passwordTextField.text = ""
    }


    @IBAction func onLogin(_ sender: Any) {
        guard let email = emailTexfield.text , let password = passwordTextField.text else {
            return
        }
        FireBaseAuthManager.shared.login(email, password) { (status) in
            if status{
                print("Đăng nhập thành công")
                let homeVC = HomeViewController()
                self.navigationController?.pushViewController(homeVC, animated: true)
            }else{
                print("Đăng nhập không thành công")
            }
        }
    }
    @IBAction func onRegister(_ sender: Any) {
        let registerVC = RegisterViewController()
        navigationController?.pushViewController(registerVC, animated: true)
    }
   
}
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTexfield {
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
         } else if textField == passwordTextField {
            textField.resignFirstResponder()
         }
        return true
    }
}
