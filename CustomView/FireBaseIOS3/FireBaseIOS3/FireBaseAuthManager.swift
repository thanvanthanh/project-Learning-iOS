//
//  FireBaseAuthManager.swift
//  FireBaseIOS3
//
//  Created by Thân Văn Thanh on 5/12/21.
//

import Foundation
import FirebaseAuth

class FireBaseAuthManager {
    static let shared = FireBaseAuthManager()
    func register(_ email: String, _ password: String, completion: @escaping ((_ success: Bool) -> Void)) {
            Auth.auth().createUser(withEmail: email, password: password) { (userResutl, error) in
                if let user = userResutl?.user {
                    print("Email: \(user.email ?? "")")
                    completion(true)
                } else {
                    print("Error: \(error)")
                    completion(false)
                }
            }
        }
    func login(_ email: String, _ password: String, completion: @escaping ((_ success: Bool) -> Void)){
        Auth.auth().signIn(withEmail: email, password: password) { (userResutl, error) in
            if let error = error {
                print("Error\(error)")
                completion(false)
            }else{
                completion(true)
                if let user = userResutl?.user{
                    print("UserID:\(user.uid)")
                }
            }
        }
    }
    
    //hàm đăng xuất
    func logout(completion :@escaping (_ success : Bool) -> Void){
        do {
            try Auth.auth().signOut()
            completion(true)
            
        }catch let logOutError as NSError {
            print("Error \(logOutError)")
            completion(false)
        }
    }
}
