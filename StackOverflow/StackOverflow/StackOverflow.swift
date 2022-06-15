//
//  StackOverflow.swift
//  StackOverflow
//
//  Created by Thân Văn Thanh on 4/20/21.
//

import Foundation
import Alamofire
import SwiftyJSON

class StackOverflow {
    var hasMore : Bool?
    var quotaMax : Int?
    var quotaRemaining : Int?
    var items : [Item]?
    
    required public init?(_ json : JSON){
        hasMore = json["has_more"].boolValue
        quotaMax = json["quota_max"].intValue
        quotaRemaining = json["quota_remaining"].intValue
        items = json["items"].arrayValue.map {Item($0)!}
    }
}

class Item {
    var tags = [String]()
    var title : String?
    var score : Int?
    var answerCount : Int?
    var link : String?
    var isAnswered: Bool?
    var owner : Owner?
    
    required public init?(_ json: JSON){
        tags = json["tags"].arrayValue.map {$0.stringValue}
        title = json["title"].stringValue
        score = json["score"].intValue
        answerCount = json["answer_count"].intValue
        link = json["link"].stringValue
        isAnswered = json["is_answered"].boolValue
//        owner = Owner(json["owner"].object as! JSON)
        owner = json["owner"].object as? Owner
        
    }
    
}

class Owner {
    var userID : Int?
    var displayName : String?
    var profileImage : String?
    
    required public init?(_ json : JSON){
        userID = json["user_id"].intValue
        displayName = json["display_name"].stringValue
        profileImage = json["profile_image"].stringValue
        
    }
    
}
