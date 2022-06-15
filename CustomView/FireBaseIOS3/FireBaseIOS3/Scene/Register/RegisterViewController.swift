//
//  RegisterViewController.swift
//  FireBaseIOS3
//
//  Created by Thân Văn Thanh on 5/12/21.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }


    @IBAction func register(_ sender: Any) {
        guard let email = emailTextField.text ,
              let password = passwordTextField.text,
              password.count >= 6
        else {
            alertUserLoginError()
            return
        }
        
        FireBaseAuthManager.shared.register(email, password ) { (status) in
            if status {
                DatabaseManager.shared.insertUser(with: ChatAPPUser(emailAddress: email))
                print("tao tai khoan thanh cong")
                self.navigationController?.popViewController(animated: true)
            }else{
                print("tạo tài khoản thất bại")
            }
        }
        
        }
    func alertUserLoginError(message: String = "Please enter all information to create a new account.") {
        let alert = UIAlertController(title: "Woops",
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Dismiss",
                                      style: .cancel, handler: nil))
        present(alert, animated: true)
    }

    }
extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
         } else if textField == passwordTextField {
            textField.resignFirstResponder()
         }
        return true
    }
}
    
