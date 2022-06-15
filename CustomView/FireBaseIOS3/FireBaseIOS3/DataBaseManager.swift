//
//  DataBaseManager.swift
//  FireBaseIOS3
//
//  Created by Thân Văn Thanh on 24/06/2021.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager{
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
}
    extension DatabaseManager{
        public func userExists(with email : String , completion: @escaping ((Bool) -> Void )){
            database.child(email).observeSingleEvent(of: .value) { snapshot in
                guard snapshot.value as? String != nil else {
                    completion(true)
                    return
                }
                completion(false)
            }
        }
        
        public func insertUser(with user : ChatAPPUser){
            database.child(user.emailAddress)
        }
    }

    
        
       
    

struct ChatAPPUser {
    let emailAddress : String
}
