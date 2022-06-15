//
//  File.swift
//  HoWing
//
//  Created by Ishipo on 22/05/2021.
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
    
    // ham logout
    func logout(completion: @escaping ((_ success: Bool) -> Void)){
        do {
            try Auth.auth().signOut()
            completion(true)
        } catch let logOutError as NSError {
            print("Error: \(logOutError)")
            completion(false)
        }
    }
    
}





